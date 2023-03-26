var sampleEmployees = [
  {
    'name': 'Thomas Anderson',
    'team': 'Marketing',
    'email': 'thomas_anderson@gmail.com',
    'phone': '1234567812',
    'location': 'Chennai',
    'dateOfJoining': "2023-02-08T20:05:43.534",
    'dob': "2003-02-08T20:05:43.534",
    'role': 'Peopls Ops',
    'gender': 'MALE',
    'empId': "ID098765",
    'dependants': [
      {
        'relation': 'SPOUSE',
        'gender': 'FEMALE',
        'name': 'Mark Kim',
        'dob': "2003-02-08T20:05:43.534",
      },
      {
        'relation': 'MOTHER',
        'gender': 'FEMALE',
        'name': 'Isabella Garcia',
        'dob': "1961-02-08T20:05:43.534",
      }
    ],
    'permanentAddress': {
      'addr1': '132, World Sea Face Road',
      'addr2': 'Neelam Bridge, R G Thandani',
      'city': 'Marg',
      'district': 'Mumbai',
      'state': 'Maharashtra',
      'pincode': '400018'
    },
    'currentAddress': {
      'addr1': '132, World Sea Face Road',
      'addr2': 'Neelam Bridge, R G Thandani',
      'city': 'Marg',
      'district': 'Mumbai',
      'state': 'Maharashtra',
      'pincode': '400018'
    },
    'bankAccounts': [
      {
        'bankName': 'Union Bank of India',
        'logo': 'https://www.logotaglines.com/wp-content/uploads/2016/08/union-bank-of-india.png',
        'name': 'Mark Kim',
        'accNo': 'UBO12345678',
        'ifsc': 'UBO98765432',
        'branch': 'Sector 10, Marg',
        'isPrimary': true,
      },
      {
        'bankName': 'Union Bank of India',
        'logo': 'https://www.logotaglines.com/wp-content/uploads/2016/08/union-bank-of-india.png',
        'name': 'Mark Kim',
        'accNo': 'UBO12345678',
        'ifsc': 'UBO98765432',
        'branch': 'Sector 10, Marg',
        'isPrimary': false,
      }
    ]
  },
  {'name': 'Kalid Fadel', 'team': 'Sales', 'email': 'kalid_fadel@gmail.com', 'phone': '786786780', 'location': 'Chennai'},
  {'name': 'Eric Garcia', 'team': 'Security', 'email': 'eric_garcia@gmail.com', 'phone': '1245321435', 'location': 'Mumbai'},
  {'name': 'Aryan Mehta', 'team': 'IT', 'email': 'aryan_mehta@gmail.com', 'phone': '3435234564', 'location': 'Bangalore'},
  {'name': 'Thomas Anderson', 'team': 'Marketing', 'email': 'thomas_anderson@gmail.com', 'phone': '1234567812', 'location': 'Chennai'},
  {'name': 'Kalid Fadel', 'team': 'Sales', 'email': 'kalid_fadel@gmail.com', 'phone': '786786780', 'location': 'Chennai'},
  {'name': 'Eric Garcia', 'team': 'Security', 'email': 'eric_garcia@gmail.com', 'phone': '1245321435', 'location': 'Mumbai'},
  {'name': 'Aryan Mehta', 'team': 'IT', 'email': 'aryan_mehta@gmail.com', 'phone': '3435234564', 'location': 'Bangalore'}
];

var sampleTimeCard = [
  {
    'date': DateTime.now().subtract(Duration(days: 1)).toIso8601String().split('T')[0],
    'name': 'Thomas Anderson',
    'checkin': "08:15AM",
    'checkout': "08:15AM",
    'mealBreak': "1 hr 30 min",
    'hoursRegular': "8 hr 30 min",
    'overTime': '0 min',
    'approval': false
  },
  {
    'date': DateTime.now().subtract(Duration(days: 1)).toIso8601String().split('T')[0],
    'name': 'Kalid Fadel',
    'checkin': "08:15AM",
    'checkout': "Current",
    'mealBreak': "30 min",
    'hoursRegular': "7 hr 20 min",
    'overTime': '0 min',
    'approval': false
  },
  {
    'date': DateTime.now().subtract(Duration(days: 1)).toIso8601String().split('T')[0],
    'name': 'Eric Garcia',
    'checkin': "08:15AM",
    'checkout': "12:15PM",
    'mealBreak': "1 hr 0 min",
    'hoursRegular': "8 hr 20 min",
    'overTime': '8 hr 20 min',
    'approval': false
  },
  {
    'date': DateTime.now().subtract(Duration(days: 1)).toIso8601String().split('T')[0],
    'name': 'Aryan Mehta',
    'checkin': "08:15AM",
    'checkout': "06:15PM",
    'mealBreak': "50 min",
    'hoursRegular': "5 hr 30 min",
    'overTime': '30 min',
    'approval': false
  },
  {
    'date': DateTime.now().subtract(Duration(days: 1)).toIso8601String().split('T')[0],
    'name': 'Brian Jackson',
    'checkin': "08:15AM",
    'checkout': "09:15AM",
    'mealBreak': "45 min",
    'hoursRegular': "55 min",
    'overTime': '0 min',
    'approval': false
  }
];

var sampleStock = [
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 756,
    'stack': 93,
    'location': 'Chennai',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 345,
    'stack': 89,
    'location': 'Mysore',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 890,
    'stack': 88,
    'location': 'Chennai',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 675,
    'stack': 16,
    'location': 'Hyderabad',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 231,
    'stack': 67,
    'location': 'Chennai',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 56,
    'stack': 18,
    'location': 'Hyderabad',
    'description': 'Product Description'
  },
  {
    'name': 'Product',
    'code': '967',
    'qr_code': '7586938505',
    'price': 23,
    'stack': 98,
    'location': 'Mysore',
    'description': 'Product Description'
  }
];
