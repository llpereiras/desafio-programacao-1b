class Upload < ActiveRecord::Base

  enum tipo: [:nao_processado, :erro, :sucesso]

  mount_uploader :arquivo, ArquivoUploader

  after_save :processar_arquivo

  def processar_arquivo
    return ::Importacao::Interprete.processar_arquivo(self.arquivo.path)
  end

end
