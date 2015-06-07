class FohController < ApplicationController
  def showresults
		date_today = Time.now.strftime('%Y%m%d')
		text_to_output = File.read("fohresults/results.txt").gsub(/\.\.\./, "\n").gsub(/to win\ /, "to win\n").gsub(/iterations\)/, "iterations)\n").gsub(/Finished/, "\nFinished").gsub(/\n/,'<br>')
		render :text => text_to_output
  end
end
