module HashtagModule
  class ListHashtagsService
    def initialize(params)
      # TODO: identify origin and set company
      @company = Company.last
    end

    def call
      hashtags = @company.hashtags
      return "Nenhum hashtag encontrado para este time!! :(" if hashtags.size < 1

      response = "*ID - Hashtags e número de perguntas desta tag* \n\n"
      hashtags.each do |h|
        response += "*#{h.id}* - "
        response += "*#{h.name}* "
        response += "(#{h.faqs.size})"
        response += "\n\n"
      end

      response
    end
  end
end
