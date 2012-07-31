class BasicinfoPdf < Prawn::Document
	def initialize(basicinfos, educations, experiences, othereducations, skills)
		super(top_margin: 50)

		@basicinfos = basicinfos
		@educations = educations
		@experiences = experiences
		@othereducations = othereducations
		@skills = skills

		text "PROPOSED CANDIDATE", size: 14.5, style: :bold, align: :center
  		stroke_horizontal_rule
  		pad_top(10) {}

		my_basicinfos
		my_personal
		my_educations
		my_positions_held
		my_skill
		my_careersummary
		my_trainings

	end

	def my_basicinfos
		pad_top(15) {}
		@basicinfos.each do |basicinfo|
			table [["<font size='30'>" + basicinfo.firstname + " " + basicinfo.middlename[0] + "." + " " + basicinfo.lastname + "</font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 40 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
   				row(0).background_color = "DDDDDD"
   				row(1).border_width = 0
			end
		end
	end

	def my_personal
		pad_top(15) {}
		@basicinfos.each do |basicinfo|
			table [["<font size='15'><b> PERSONAL</b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
			end
			stroke_horizontal_rule
  			pad_top(5) {}

  			text "Citizenship:" + "         " + basicinfo.citizenship + "                                          " + "Email" + "      " +  basicinfo.email, size: 12
			text "Date of Birth:" + "      " + basicinfo.birthdatem + " " + basicinfo.birthdated + ", " + basicinfo.birthdatey  + "                                " + "Telephone:" + "    " + basicinfo.phonenumber
			text "Languages:" + "        " + basicinfo.languages , size: 12
		end
	end

	def my_educations

		pad_top(15) {}

		table [["<font size='15'><b> EDUCATION </b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
		end

		stroke_horizontal_rule

		@educations.each do |education|

  			pad_top(5) {}

  			text education.degree + "    -    " + education.datesattendedfrom + " to " + education.datesattendedto, size: 15, style: :bold
			text education.schoolname + "    -    " + education.location + ", " + education.country, size: 12, style: :bold
			pad_top(10) {}
		end 
	end

	def my_positions_held
		pad_top(15) {}

		table [["<font size='15'><b> POSITIONS HELD </b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
		end
		stroke_horizontal_rule

		@experiences.each do |experience|

  			pad_top(5) {}

  			text experience.title + "         " + experience.timeperiodfrom + " " + experience.timeperiodfromyear + " to " + experience.timeperiodto + " " + experience.timeperiodtoyear, size: 15, style: :bold
  			text experience.companyname + " (" + experience.location + ")", size: 12, style: :bold
  			text " "
  			text experience.description, size: 12
  			
			pad_top(10) {}
		end 
	end

	def my_careersummary
		pad_top(15) {}

		table [["<font size='15'><b> CAREER SUMMARY </b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
		end
		stroke_horizontal_rule

		@experiences.each do |experience|

  			pad_top(5) {}

  			text experience.title + "         " + experience.timeperiodfrom + " " + experience.timeperiodfromyear + " to " + experience.timeperiodto + " " + experience.timeperiodtoyear, size: 15, style: :bold
  			text experience.companyname, size: 12
  			
			pad_top(10) {}
		end 
	end
	def my_trainings
		pad_top(15) {}

		table [["<font size='15'><b> TRAININGS/SEMINARS ATTENDED </b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
		end
		stroke_horizontal_rule

		@othereducations.each do |othereducation|

  			pad_top(5) {}

  			text othereducation.monthfrom + " " + othereducation.dateattendedfrom + " " + othereducation.monthto + " " + othereducation.dateattendedto + ", " + othereducation.course + ", " + othereducation.schoolname, size: 12
  			
			pad_top(10) {}
		end 
	end

	def my_skill
		pad_top(15) {}

		table [["<font size='15'><b> Skills and Expertise </b></font>"]],
         		:cell_style => { :overflow => :shrink_to_fit, :inline_format => true, :width => 540, :height => 25 } do
				row(0).font_style = :bold
   				row(0).border_width = 0
		end
		stroke_horizontal_rule

		@skills.each do |skill|

  			pad_top(5) {}

  			text skill.skillsandexpertise, size: 12
  			
			pad_top(10) {}
		end 
	end
end



