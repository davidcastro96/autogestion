#Esta es la clase que lleva los errores al formulario new
class CustomFormBuilder < ActionView::Helpers::FormBuilder
	def form_error
		if self.object.errorr.any?
			model_name = self.object.class.model_name.human
			plural_name = self.object.class.model_name.plural
			is_new = self.object.persisted? ? 'edit' : 'new'

			@template.content.tag :div, class: 'alert alert-danger' do
				@template.content.tag
			end
		end
end	