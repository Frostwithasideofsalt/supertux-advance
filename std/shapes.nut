////////////
// SHAPES //
////////////

::Rec <- class {
	x = 0.0
	y = 0.0
	w = 0.0
	h = 0.0
	slope = 0
	// 0 no slope
	// 1 top right
	// 2 top left
	// 3 bottom right
	// 4 bottom left

	constructor(_x, _y, _w, _h, _slope) {
		x = _x
		y = _y
		w = _w
		h = _h
		slope = _slope

		//Prevent zero dimensions
		//It's important, trust me
		if(w <= 0) w = 0.1
		if(h <= 0) h = 0.1
	}

	function _typeof() { return "Rec" }

	function setPos(_x, _y, _a) {
		x = _x
		y = _y
	}
}

::hitTest <- function(a, b) {
	switch(typeof a) {
		case "Rec":
			switch(typeof b) {
				case "Rec":
					if(abs(a.x - b.x) > abs(a.w + b.w)) return false
					if(abs(a.y - b.y) > abs(a.h + b.h)) return false

					//Slopes
					if(a.slope != 0 || b.slope != 0) {
						switch(a.slope) {
							case 0:
								switch(b.slope) {
									case 0:
										break
									case 1:
										//Get slope angle
										local a0 = abs(a.h / a.w)
										local a1 = abs(((a.y - a.h) - (b.y - b.h)) / ((a.x - a.w) - (b.x - b.w)))
										break
									case 2:
										break
									case 3:
										break
									case 4:
										break
								}
								break
							case 1:
								switch(b.slope) {
									case 0:
										break
									case 1:
										//Get slope angle
										local a0 = abs(a.h / a.w)
										local a1 = abs(((a.y - a.h) - (b.y - b.h)) / ((a.x - a.w) - (b.x - b.w)))
										break
									case 2:
										break
									case 3:
										break
									case 4:
										break
								}
								break

							case 2:
								switch(b.slope) {
									case 0:
										break
									case 1:
										break
									case 2:
										break
									case 3:
										break
									case 4:
										break
								}
								break

							case 3:
								switch(b.slope) {
									case 0:
										break
									case 1:
										break
									case 2:
										break
									case 3:
										break
									case 4:
										break
								}
								break

							case 4:
								switch(b.slope) {
									case 0:
										break
									case 1:
										break
									case 2:
										break
									case 3:
										break
									case 4:
										break
								}
								break
						}
					}

					return true
					break

				default:
					return false
					break
			}
			break

		default:
			return false
			break
	}
}