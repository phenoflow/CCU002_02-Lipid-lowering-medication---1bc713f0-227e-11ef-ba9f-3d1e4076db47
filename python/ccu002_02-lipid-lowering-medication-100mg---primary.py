# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"0212000L0BBAAAA","system":"bnf"},{"code":"021200010BBAAAA","system":"bnf"},{"code":"0212000B0BBAEAL","system":"bnf"},{"code":"0212000B0AAALAL","system":"bnf"},{"code":"0212000ACBBABAB","system":"bnf"},{"code":"0212000AGAAAAAA","system":"bnf"},{"code":"0212000ABBHAAAA","system":"bnf"},{"code":"0212000ACBBACAC","system":"bnf"},{"code":"0212000ALBBAAAA","system":"bnf"},{"code":"0212000ABBCAAAA","system":"bnf"},{"code":"0212000AAAAAAAA","system":"bnf"},{"code":"0212000ACAAABAB","system":"bnf"},{"code":"021200010AAAAAA","system":"bnf"},{"code":"0212000L0AAAAAA","system":"bnf"},{"code":"0212000X0AAAAAA","system":"bnf"},{"code":"0212000ACAAAAAA","system":"bnf"},{"code":"0212000Y0AAAAAA","system":"bnf"},{"code":"0212000ABBFAAAA","system":"bnf"},{"code":"0212000Y0BBAEAA","system":"bnf"},{"code":"0212000AABBAAAA","system":"bnf"},{"code":"0212000B0AAAAAA","system":"bnf"},{"code":"0212000ABBJAAAA","system":"bnf"},{"code":"0212000B0AAAHAH","system":"bnf"},{"code":"0212000Y0BDAAAA","system":"bnf"},{"code":"0212000ACBBAAAA","system":"bnf"},{"code":"0212000ACAAACAC","system":"bnf"},{"code":"0212000Y0BBAAAA","system":"bnf"},{"code":"0212000ABBGAAAA","system":"bnf"},{"code":"0212000B0BBAAAA","system":"bnf"},{"code":"0212000ABBEAAAA","system":"bnf"},{"code":"0212000ABBIAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-lipid-lowering-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-lipid-lowering-medication-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-lipid-lowering-medication-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-lipid-lowering-medication-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
