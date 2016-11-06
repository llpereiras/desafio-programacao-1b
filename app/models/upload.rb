require 'interprete'
class Upload < ActiveRecord::Base

  enum status: [:nao_processado, :erro, :sucesso]

  mount_uploader :arquivo, ArquivoUploader

  after_save -> { processar_arquivo(self) }

  def processar_arquivo(upload)
    retorno =  ::Importacao::Interprete.processar_arquivo(upload.arquivo.path)
    if retorno[:status] == 200
      status = 2
    end
    if retorno[:status] == 500
      status = 1
    end
    upload.update_columns(status: status)
  end

end
