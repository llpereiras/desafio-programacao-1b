module Importacao
  class Interprete

    def self.processar_arquivo(file)
      begin
        raise "Arquivo não informado" unless File.exist?(file.to_s)
        File.open(file, "r").each_with_index do |line, index|
          next if index === 0
          data = line.split(/\t/)
          Venda.criar(data)
        end
        return {message: "Arquivo processado com sucesso", status: 200}
      rescue Exception => e
        return {message: "Houve um erro ao processar o arquivo: #{e.message}", status: 500}
      end
    end

  end
end
