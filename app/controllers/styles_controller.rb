class StylesController < ApplicationController
  def index
    @q = Style.ransack(params[:q])
    @styles = @q.result(:distinct => true).includes(:openers, :venues, :approaches).page(params[:page]).per(10)

    render("styles/index.html.erb")
  end

  def show
    @venue = Venue.new
    @opener = Opener.new
    @style = Style.find(params[:id])

    render("styles/show.html.erb")
  end

  def new
    @style = Style.new

    render("styles/new.html.erb")
  end

  def create
    @style = Style.new


    save_status = @style.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/styles/new", "/create_style"
        redirect_to("/styles")
      else
        redirect_back(:fallback_location => "/", :notice => "Style created successfully.")
      end
    else
      render("styles/new.html.erb")
    end
  end

  def edit
    @style = Style.find(params[:id])

    render("styles/edit.html.erb")
  end

  def update
    @style = Style.find(params[:id])


    save_status = @style.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/styles/#{@style.id}/edit", "/update_style"
        redirect_to("/styles/#{@style.id}", :notice => "Style updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Style updated successfully.")
      end
    else
      render("styles/edit.html.erb")
    end
  end

  def destroy
    @style = Style.find(params[:id])

    @style.destroy

    if URI(request.referer).path == "/styles/#{@style.id}"
      redirect_to("/", :notice => "Style deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Style deleted.")
    end
  end
end
