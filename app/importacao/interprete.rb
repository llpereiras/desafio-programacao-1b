module Importacao
  class Interprete

    def self.processar_arquivo(upload)
      begin
        file = upload.arquivo.path
        raise "Arquivo não informado" unless File.exist?(file.to_s)
        File.open(file, "r").each_with_index do |line, index|
          next if index == 0
          Venda.criar(upload, preparar_dados(data))
        end
        return {message: "Arquivo processado com sucesso", status: 200}
      rescue Exception => e
        return {message: "Houve um erro ao processar o arquivo: #{e.message} #{e.backtrace.each{|m| puts "#{m}\n\n" }}", status: 500}
      end
    end

    def self.preparar_dados(data)
      data = dividirTab(data)
      limpar(data)
    end

    def self.dividirTab(data)
      line.split(/\t/)
    end

    def limpar(data)
      data.map! { |d|  d.gsub(/\n/, "") }
    end

  end
end
