module ApplicationHelper
  def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
      else
        nil
    end
  end

  def nested_dropdown(items)
    result = []
    items.map do |item, sub_items|
      result << [('- ' * item.depth) + item.title, item.id]
      result += nested_dropdown(sub_items) unless sub_items.blank?
    end
    result
  end

  def yes_no_select
    return [[ 'YES', true ], [ 'NO', false ]]
  end

  def no_yes_select
    return yes_no_select.reverse!
  end

  def and_or_select
    return [[ 'AND', '0' ], [ 'OR', '1' ]]
  end

  def or_and_select
    return and_or_select.reverse!
  end

  def months
    [
      ['01', 'January'    ],
      ['02', 'February'   ],
      ['03', 'March'      ],
      ['04', 'April'      ],
      ['05', 'May'        ],
      ['06', 'June'       ],
      ['07', 'July'       ],
      ['08', 'August'     ],
      ['09', 'September'  ],
      ['10', 'October'    ],
      ['11', 'November'   ],
      ['12', 'December'   ]
    ]
  end

  def genders
    [
      ['Male',    'male'    ],
      ['Female',  'female'  ]
    ]
  end

  def titles
    [
      ['Mr',    'Mr.'   ],
      ['Mrs',   'Mrs.'  ],
      ['Miss',  'Miss.' ],
      ['Ms',    'Ms.'   ],
      ['Dr',    'Dr.'   ]
    ]
  end

  def suffixes
    [
      ['Sr',  'Sr.'   ],
      ['Jr',  'Jr.'   ],
      ['PhD', 'Ph.D.' ],
      ['EdD', 'Ed.D.' ],
      ['MD',  'MD'    ],
      ['DO',  'DO'    ]
    ]
  end

  def us_states_name_and_abbreviation
    [
      ['Alabama',               'AL'],
      ['Alaska',                'AK'],
      ['Arizona',               'AZ'],
      ['Arkansas',              'AR'],
      ['California',            'CA'],
      ['Colorado',              'CO'],
      ['Connecticut',           'CT'],
      ['Delaware',              'DE'],
      ['District of Columbia',  'DC'],
      ['Florida',               'FL'],
      ['Georgia',               'GA'],
      ['Hawaii',                'HI'],
      ['Idaho',                 'ID'],
      ['Illinois',              'IL'],
      ['Indiana',               'IN'],
      ['Iowa',                  'IA'],
      ['Kansas',                'KS'],
      ['Kentucky',              'KY'],
      ['Louisiana',             'LA'],
      ['Maine',                 'ME'],
      ['Maryland',              'MD'],
      ['Massachusetts',         'MA'],
      ['Michigan',              'MI'],
      ['Minnesota',             'MN'],
      ['Mississippi',           'MS'],
      ['Missouri',              'MO'],
      ['Montana',               'MT'],
      ['Nebraska',              'NE'],
      ['Nevada',                'NV'],
      ['New Hampshire',         'NH'],
      ['New Jersey',            'NJ'],
      ['New Mexico',            'NM'],
      ['New York',              'NY'],
      ['North Carolina',        'NC'],
      ['North Dakota',          'ND'],
      ['Ohio',                  'OH'],
      ['Oklahoma',              'OK'],
      ['Oregon',                'OR'],
      ['Pennsylvania',          'PA'],
      ['Puerto Rico',           'PR'],
      ['Rhode Island',          'RI'],
      ['South Carolina',        'SC'],
      ['South Dakota',          'SD'],
      ['Tennessee',             'TN'],
      ['Texas',                 'TX'],
      ['Utah',                  'UT'],
      ['Vermont',               'VT'],
      ['Virginia',              'VA'],
      ['Washington',            'WA'],
      ['West Virginia',         'WV'],
      ['Wisconsin',             'WI'],
      ['Wyoming',               'WY']
    ]
  end

  def us_states_abbreviation
    [
      ['AK', 'AK'],
      ['AL', 'AL'],
      ['AR', 'AR'],
      ['AZ', 'AZ'],
      ['CA', 'CA'],
      ['CO', 'CO'],
      ['CT', 'CT'],
      ['DC', 'DC'],
      ['DE', 'DE'],
      ['FL', 'FL'],
      ['GA', 'GA'],
      ['HI', 'HI'],
      ['IA', 'IA'],
      ['ID', 'ID'],
      ['IL', 'IL'],
      ['IN', 'IN'],
      ['KS', 'KS'],
      ['KY', 'KY'],
      ['LA', 'LA'],
      ['MA', 'MA'],
      ['MD', 'MD'],
      ['ME', 'ME'],
      ['MI', 'MI'],
      ['MN', 'MN'],
      ['MO', 'MO'],
      ['MS', 'MS'],
      ['MT', 'MT'],
      ['NC', 'NC'],
      ['ND', 'ND'],
      ['NE', 'NE'],
      ['NH', 'NH'],
      ['NJ', 'NJ'],
      ['NM', 'NM'],
      ['NV', 'NV'],
      ['NY', 'NY'],
      ['OH', 'OH'],
      ['OK', 'OK'],
      ['OR', 'OR'],
      ['PA', 'PA'],
      ['RI', 'RI'],
      ['SC', 'SC'],
      ['SD', 'SD'],
      ['TN', 'TN'],
      ['TX', 'TX'],
      ['UT', 'UT'],
      ['VA', 'VA'],
      ['VT', 'VT'],
      ['WA', 'WA'],
      ['WI', 'WI'],
      ['WV', 'WV'],
      ['WY', 'WY']
    ]
  end
end
