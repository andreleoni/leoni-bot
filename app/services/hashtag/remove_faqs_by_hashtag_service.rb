module HashtagModule
  class RemoveFaqsByHashtagService
    def initialize(params)
      # TODO: identify origin and set company
      @company = Company.last
      @params = params
      @id = params["id-original"]
      @hashtag_name = params["hashtag-name-original"]
    end

    def call
      hashtag = Hashtag.find(@id) rescue nil
      return "Não encontrei esse hashtag, pode tentar novamente? rsrs" if hashtag == nil
      return "Acho que voce me falou o id certo, mas talvez o nome da hashtag errada, não vou fazer nada para evitar dor de cabeça... hehe" if hashtag.name != @hashtag_name

      Faq.transaction do
        hashtag.faqs.each do |h|
          if h.hashtags.count <= 1
            h.delete
          end
        end

        hashtag.delete

        "Consegui excluir a sua Hashtag! :D"
      end
    end
  end
end
