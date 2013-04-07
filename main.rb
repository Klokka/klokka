# klokka project

Shoes.app :title => "Klokka", :width => 800, :height => 600 do
	@document = File.read("examples/lipsum.md")

	background "#242424"
	
	@sidebar = stack :width => 48, :height => 1.0, :scroll => false do
		background silver

		# Placeholders
		button "＋" # New
		button "Ｏ" # Open
		button "Ｓ" # Save
		button "Ｒ" # Run
	end

	stack :width => -48, :height => 1.0 do
		flow :width => 1.0, :height => 42, :margin => 10 do
			@title = caption "Untitled", :font => "Open Sans 12px", :stroke => white
		end

		@content = stack :width => 1.0, :height => -42, :scroll => true do
			background "#3f3f3f"
			@buffer = para @document, :font => "Consolas 12px", :stroke => "#dcdcdc"
			@buffer.cursor = -1
		end
	end
end
