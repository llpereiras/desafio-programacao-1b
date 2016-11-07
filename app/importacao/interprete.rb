module Importacao
  class Interprete

    def self.processar_arquivo(upload)
      begin
        file = upload.arquivo.path
        raise "Arquivo não informado" unless File.exist?(file.to_s)
        File.open(file, "r").each_with_index do |line, index|
          next if index == 0
          Venda.criar(upload, preparar_dados(line))
        end
        return {message: "Arquivo processado com sucesso", status: 200}
      rescue Exception => e
        return {message: "Houve um erro ao processar o arquivo: #{e.message} #{e.backtrace.each{|m| puts "#{m}\n\n" }}", status: 500}
      end
    end

    def self.preparar_dados(line)
      data = dividirTab(line)
      limpar(data)
    end

    def self.dividirTab(line)
      line.split(/\t/)
    end

    def self.limpar(data)
      data.map! { |d|  d.gsub(/\n/, "") }
    end

  end
end
