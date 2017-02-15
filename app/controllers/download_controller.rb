class DownloadController < ApplicationController

  def index
    send_file(
      Rails.root.join('app' , 'assets', 'downloads', 'dummypdf.pdf'),
      type: 'application/pdf',
      x_sendfile: true
    )
  end

end