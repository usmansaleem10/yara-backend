# frozen_string_literal: true

# Procotes
procotes = [{ name: 'B', density: 1.415, canadian_price:	18.00, us_price:	68.00,	b_ratio: 0.1	},
            { name: 'Cu', density: 1.524, canadian_price:	45.00, us_price:	138.00,	cu_ratio: 0.5	},
            { name: 'Mn', density: 1.726, canadian_price:	24.00, us_price:	106.00,	mn_ratio: 0.5	},
            { name: 'Zn', density: 1.643, canadian_price:	26.00, us_price:	100.00,	zn_ratio: 0.7 },
            { name: 'BMZ', density: 1.580, canadian_price: 113.44, us_price: 90.00,	b_ratio: 0.06,		mn_ratio: 0.1,
              zn_ratio:	0.2 },
            { name: 'BCMZ', density: 1.668, canadian_price:	28.00, us_price: 110.00,	b_ratio: 0.06, cu_ratio:	0.1, 
              mn_ratio:	0.1, zn_ratio:	0.2 }]

procotes.each do |procote|
  record = Procote.find_or_create_by(name: procote[:name])
  record.assign_attributes(procote)
  record.save!
end
