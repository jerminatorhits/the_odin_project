$global = -1

def log descriptionOfBlock, &block
	$global = $global + 1
	$global.times do
	print "   "
	end
	puts "Beginning " + descriptionOfBlock.to_s
	startTime = Time.now
	q = block.call
	duration = Time.now - startTime
	$global.times do
	print "   "
	end
	puts descriptionOfBlock.to_s + " has finished and has returned " + q.to_s
	$global = $global - 1
end

log "count to 4" do
	count = 0
	4.times do
		count = count + 1
		$global.times do
		print "   "
		end
		puts count.to_s
	end
	log "say hi 3 times" do
		3.times do
			$global.times do
			print "   "
			end
			puts "hi"
		end
		log "eat boba 7 times" do
			7.times do
				$global.times do
				print "   "
				end
				puts "NOM"
			end
			">=D"
		end
		"O_O"
	end
	count
end