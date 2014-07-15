class HomeController < ApplicationController
  def index
  	@titulo = "APP - Inicio"
  end

  def quienes_somos
    @titulo = "APP - Quienes Somos"
  end

  def contacto
    @titulo = "LPC - Contacto"
    if request.post?
      begin
      # Envir el correo electrónico
        if Email.micorreo(params).deliver and Email.enviar(params).deliver
          flash.now[:noticia] = "Enviado Correctamente"
        end
      rescue
        flash.now[:error] = "No se ha enviado"
      end
    end
  end

  def localizacion
    @titulo = "APP - Localizacion"
  end

  def servicios
    @titulo = "APP - Servicios"
  end
end
