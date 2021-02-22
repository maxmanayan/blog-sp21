class PagesController < ApplicationController
  def index
    # define instance variable
    @pages = Page.all

    #ssr(server-side react)
    render component: "Pages", props: {pages: @pages}
  end

  def show
    # params in our controller
    @page = Page.find(params[:id])
    render component: "Page", props: {page: @page}
  end

  def new
    # need to return a form
    render component: "PageNew"
  end

  def create
    puts "HERE!!!!!"
    puts params
    title = params[:page][:title]
    author = params[:page][:author]
    body = params[:page][:body]

    Page.create(title: title, author: author , body: body)
    redirect_to pages_path
  end
end
