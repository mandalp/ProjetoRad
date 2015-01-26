module ApplicationHelper
	
	
	
	def valor_formatado(number)
	    number_to_currency number,
	      unit: "R$",
	      separator: ",",
	      delimiter: "."
	end

	def novo_comentario(comentavel)
		form_novo_comentario = render partial: "comentarios/novo_comentario", locals: {comentavel: comentavel}
		raw form_novo_comentario
	end
end