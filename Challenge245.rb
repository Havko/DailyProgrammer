





def date_parser(date)
	arr = date.gsub(/[\s\/]/, '-')
	newArr = arr.split("-")
	if newArr[0].to_i < 1000 
		if newArr[2].to_i < 1000
			slot1 = "20" + newArr[2]
			if newArr[0].to_i < 10
				slot2 = "0" + newArr[0] 
			else 
				slot2 = newArr[0]
			end
		if newArr[1].to_i < 10 
			slot2 = "0" + newArr[1]
		else 
			slot2 = newArr[1]
		end
		if newArr[1]
		else 
			slot1 = newArr[2]
			slot2 = newArr[0]
		end
	 
	
	if newArr[0].to_i < 10 
	slot3 ="0" + newArr[0]
    else
    	slot3 = newArr[0]
    end
		
		newArr[0] = slot1
		newArr[1] = slot2
		newArr[2] = slot3
		newArr = newArr.join('-')
		return newArr
	
	end
	newArr = newArr.join('-')
	return newArr
end

dates = ['2/13/15','1-31-10','5 10 2015','2012 3 17','2001-01-01','2008/01/07']
date1 = "2012 3 17"
dates.each do |date|
	print date_parser(date) + "\n" 
end
#print date_parser(date1)
#print date1.gsub(/[\s\/]/, '-')