# frozen_string_literal: true

puts '====================Adding Procotes================'
# Procotes
procotes = [{ name: 'B', density: 1.415, west_canadian_price: 26.00, east_canadian_price:	24.00, us_price:	91.00,	b_ratio: 0.1	},
            { name: 'Cu', density: 1.524, west_canadian_price: 61.00, east_canadian_price:	70.00, us_price:	190.00,
              cu_ratio: 0.5	},
            { name: 'Mn', density: 1.726, west_canadian_price: 33.00, east_canadian_price:	40.00, us_price:	150.00,
              mn_ratio: 0.5	},
            { name: 'Zn', density: 1.643, west_canadian_price: 36.00, east_canadian_price:	42.00, us_price:	138.00,
              zn_ratio: 0.7 },
            { name: 'BMZ', density: 1.580, west_canadian_price: 0.00, east_canadian_price: 38.00, us_price: 112.00,	b_ratio: 0.06,	mn_ratio: 0.1,
              zn_ratio:	0.2 },
            { name: 'BCMZ', density: 1.668, west_canadian_price: 38.00, east_canadian_price:	46.00, us_price: 160.00,	b_ratio: 0.06, cu_ratio:	0.1,
              mn_ratio:	0.1, zn_ratio:	0.2 }]

procotes.each do |procote|
  puts "Adding #{procote[:name]}"
  record = Procote.find_or_create_by(name: procote[:name])
  record.assign_attributes(procote)
  record.save!
end

puts '====================Procotes Added================'
puts '====================Adding Crops================'
crops = [
  { name: 'Alfalfa', unit: 'ton' },
  { name: 'Almond', unit: 'lb' },
  { name: 'Barley', unit: 'bu' },
  { name: 'Canola', unit: 'bu' },
  { name: 'Citrus', unit: '90 lb box' },
  { name: 'Corn', unit: 'bu' },
  { name: 'Cotton', unit: 'lbs' },
  { name: 'Flax', unit: 'bu' },
  { name: 'Oats', unit: 'bu' },
  { name: 'Field Peas', unit: 'bu' },
  { name: 'Lettuce', unit: 'cartons' },
  { name: 'Peanuts', unit: 'lbs' },
  { name: 'Potato', unit: 'cwt' },
  { name: 'Rice', unit: 'bu' },
  { name: 'Soybean', unit: 'bu' },
  { name: 'Sugarbeet', unit: 'ton' },
  { name: 'Sugarcane', unit: 'ton' },
  { name: 'Tomato', unit: 'ton' },
  { name: 'Wheat', unit: 'bu' }
]
crops.each do |crop|
  puts "Adding #{crop[:name]}"
  record = Crop.find_or_create_by(name: crop[:name])
  record.assign_attributes(crop)
  record.save!
end
puts '====================Crops Added================'

puts '====================Adding Crops Procode Ratio================'
crop_procotes = [{ crop: 'Alfalfa', ratio: {	BCMZ: 85, BMZ: 99, B: 95, Cu:	45, Mn:	66, Zn:	71	} },
                 { crop: 'Almond',  ratio: {	BCMZ: 0.22, BMZ:	0.22, B:	0.18, Cu:	0.15, Mn:	0.15, Zn:	0.15	} },
                 { crop: 'Barley',  ratio: {	BCMZ: 2.3, BMZ:	2.7, B: 	2.4, Cu:	1.6, Mn:	1.2, Zn:	1.6	} },
                 { crop: 'Canola',  ratio: {	BCMZ: 4.5, BMZ:	4.1, B: 	5.8, Cu:	2, Mn:	1.7, Zn:	3.7	} },
                 { crop: 'Citrus',  ratio: {	BCMZ: 1.6, BMZ:	1.6, B: 	2.3, Cu:	0.1, Mn:	0.5, Zn:	0.5	} },
                 { crop: 'Corn', ratio: {	BCMZ: 1.7, BMZ:	1.8, B: 	2, Cu:	0.4, Mn:	0.9, Zn:	1.5	} },
                 { crop: 'Cotton', ratio: {	BCMZ: 0.33, BMZ:	0.33, B:	0.25, Cu:	0.3, Mn:	0.4, Zn:	0.4	} },
                 { crop: 'Flax',  ratio: {	BCMZ: 6.3, BMZ:	4, B: 	3.8, Cu:	2.5, Mn:	2.5, Zn:	3.7	} },
                 { crop: 'Oats',  ratio: {	BCMZ: 1.7, BMZ:	2, B: 	1.3, Cu:	1, Mn:	0.9, Zn:	1	} },
                 { crop: 'Field Peas', ratio: { BCMZ:	4.7, BMZ:	4, B: 	4.8, Cu:	2.1, Mn:	2.1, Zn:	2.3	} },
                 { crop: 'Lettuce', ratio: {	BCMZ: 0.23, BMZ:	0.21, B:	0.25, Cu:	0.1, Mn:	0.2, Zn:	0.2	} },
                 { crop: 'Peanuts', ratio: {	BCMZ: 0.10, BMZ:	0.10, B:	0.09, Cu:	0.05, Mn:	0.10, Zn:	0.10	} },
                 { crop: 'Potato', ratio: {	BCMZ: 0.9, BMZ:	1,	B: 0.9, Cu: 0.5, Mn:	0.7, Zn:	0.9	} },
                 { crop: 'Rice', ratio: {	BCMZ: 1.6, BMZ:	1.6, B:	1.7, Cu:	1, Mn:	1, Zn:	1.3	} },
                 { crop: 'Soybean', ratio: {	BCMZ: 4.3, BMZ:	4.1, B:	4, Cu:	2, Mn:	3.3, Zn:	2.3	} },
                 { crop: 'Sugarbeet',  ratio: {	BCMZ: 2.7, BMZ:	3, B: 	3, Cu:	1.3, Mn:	1.7, Zn:	2.1	} },
                 { crop: 'Sugarcane',  ratio: {	BCMZ: 13, BMZ:	14, B: 	14, Cu:	6, Mn:	8, Zn:	9	} },
                 { crop: 'Tomato', ratio: {	BCMZ: 13, BMZ:	14, B:	14, Cu:	6, Mn:	8, Zn: 10	} },
                 { crop: 'Wheat', ratio: {	BCMZ: 3.2, BMZ:	4, B: 	3.5, Cu:	2.3, Mn:	2.6, Zn: 2.7	} }]
crop_procotes.each do |data|
  crop_name = data[:crop]
  ratios = data[:ratio]
  crop = Crop.find_by(name: crop_name)
  ratios.each_key do |ratio_key|
    puts "=> Adding crop: #{crop_name} -> #{ratio_key}"
    procote = Procote.find_by(name: ratio_key)
    crop.crop_procotes.find_or_create_by(procote: procote, ratio: ratios[ratio_key])
  end
end

puts '====================Crops Procode Ratio added================'

puts '====================Crops Removal Ratio================'
crop_removals = [
  { crop: 'Alfalfa', ratios: { b_ratio:	9.07, cu_ratio:	9.07, mn_ratio:	49.90, zn_ratio:	49.90 } },
  { crop: 'Barley', ratios: { b_ratio:	0.67, cu_ratio:	0.34, mn_ratio:	0.48, zn_ratio:	0.86 } },
  { crop: 'Canola', ratios: { b_ratio:	1.08, cu_ratio:	0.12, mn_ratio:	0.96, zn_ratio:	1.31 } },
  { crop: 'Corn', ratios: { b_ratio:	0.15, cu_ratio:	0.06, mn_ratio:	0.12, zn_ratio:	0.96 } },
  { crop: 'Flax', ratios: { b_ratio:	0.76, cu_ratio:	0.25, mn_ratio:	0.63, zn_ratio:	2.40 } },
  { crop: 'Oats', ratios: { b_ratio:	0.54, cu_ratio:	0.09, mn_ratio:	0.32, zn_ratio:	0.68 } },
  { crop: 'Field Peas', ratios: { b_ratio:	0.48, cu_ratio:	0.14, mn_ratio:	0.28, zn_ratio:	1.24 } },
  { crop: 'Potato', ratios: { b_ratio:	0.14, cu_ratio:	0.13, mn_ratio:	0.10, zn_ratio:	0.36 } },
  { crop: 'Soybean', ratios: { b_ratio:	0.79, cu_ratio:	0.30, mn_ratio:	0.69, zn_ratio:	1.18 } },
  { crop: 'Wheat', ratios: { b_ratio:	0.48, cu_ratio:	0.15, mn_ratio:	1.08, zn_ratio:	1.55 } }
]
crop_removals.each do |removal|
  crop_name = removal[:crop]
  ratios = removal[:ratios]
  crop = Crop.find_by(name: crop_name)
  crop.removals.find_or_create_by(ratios)
end

puts '====================Crops Removal Ratio Added================'
puts '====================Adding regions================'
regions = { "ECAN": { states: ['New Brunswick', 'Newfoundland', 'Labrador', 'Nova Scotia', 'Ontario', 'Prince Edward Island', 'Quebec'],
                      currency: 'east_canadian_price' },
            "WCAN": { states: ['Alberta', 'British Columbia', 'Manitoba', 'Saskatchewan'],
                      currency: 'west_canadian_price' },
            "US": { states: ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyomin'],
                    currency: 'us_price' } }
regions.each do |region_name, details|
  details[:states].each do |state|
    region = Region.find_or_create_by(region_name: region_name, state_name: state)
    region.currency = details[:currency]
    region.save
  end
end
puts '====================Regions Added================'
