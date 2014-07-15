class Email < ActionMailer::Base
  default from: "contacto@lpconsultorias.cl"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def micorreo(parametros)
    enviar_correo(parametros, "contacto@lpconsultorias.cl", "Nuevo Mensaje")
  end

  def enviar
    enviar_correo(parametros, parametros[:email], "Gracias por contactarnos")
  end

private

  def enviar_correo(parametros, email, asunto)
    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @mensaje = parametros[:mensaje]

    mail :to => email, :subject => asunto
  end
end
