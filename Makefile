#### PARAMETERS

# define the default folder to build
src=./www
conf=mysite.conf
p=8080
####



# Build the website
.PHONY : build
build :
	# Creating HTML directory
	
	# Build location: $(src)/html
	@mkdir -p $(src)/html
	
	@cp jemdoc $(src)  # copy jemdoc
	@cp jemdoc.css $(src)/html # copy jemdoc.css from root into output directory
	@if [ -d $(src)/assets ]; then cp -r $(src)/assets $(src)/html/assets; echo "# Copying assets"; fi # copy assets over, if the directory exists
	
	# Parsing jemdoc
	@cd $(src) && python jemdoc -c $(conf) -o html/ *.jemdoc
	
	@rm $(src)/jemdoc 
	# DONE




# clean out the html folder (useful to clean old assets)
.PHONY clean:
clean:
	# Removing director: $(src)/html
	@rm -rf $(src)/html
	# Done Cleaning"


# to check a folder that is built, run serve and then check from the root folder
.PHONY serve:
serve:
	cd $(src)/html && python3 -m http.server $p


# -O also checks external websites
# -i ignores some hosts, in this case the materialize cdn
.PHONY check:
check:
	# checking http://localhost:$p
	pylinkvalidate.py --progress -O -i https://cdnjs.cloudflare.com/ http://localhost:$p