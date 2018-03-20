# inspect_xml

Discover the schema and unique values of an XML file you need to parse in #ruby.
The script outputs full XPaths, their occurance count, and unique values (if there is less than 100 of them) 

## Run

```
gem install nokogiri
ruby inspect.rb parse_me.xml
```

## Output Example:

```
ONIXMessage - 1
ONIXMessage/Header - 1
ONIXMessage/Header/MessageNote - 1
  Metadata Extract - 1
ONIXMessage/Header/Sender - 1
ONIXMessage/Header/Sender/ContactName - 1
  CoreSource - 1
ONIXMessage/Header/Sender/SenderName - 1
  Foo Content Group - 1
ONIXMessage/Header/SentDateTime - 1
  20171019T170325Z - 1
ONIXMessage/Product - 57257
ONIXMessage/Product/Barcode - 26535
ONIXMessage/Product/Barcode/BarcodeType - 26535
  02 - 26535
ONIXMessage/Product/Barcode/PositionOnProduct - 26535
  09 - 26535
ONIXMessage/Product/CollateralDetail - 57257
ONIXMessage/Product/CollateralDetail/Prize - 5956
ONIXMessage/Product/CollateralDetail/Prize/PrizeCode - 2176
  01 - 2153
  03 - 18
  07 - 5
ONIXMessage/Product/CollateralDetail/Prize/PrizeJury - 3761
ONIXMessage/Product/CollateralDetail/Prize/PrizeName - 5956
ONIXMessage/Product/CollateralDetail/Prize/PrizeYear - 1716
  2011 - 313
  2015 - 313
  2012 - 309
  2014 - 229
  2013 - 181
  2010 - 170
  2016 - 168
  2017 - 25
  2005 - 5
  2009 - 3
ONIXMessage/Product/CollateralDetail/TextContent - 54371
ONIXMessage/Product/CollateralDetail/TextContent/ContentAudience - 54371
  00 - 54367
  03 - 4
ONIXMessage/Product/CollateralDetail/TextContent/SourceTitle - 28694
  Journal - 24172
  Website - 1785
  Magazine - 1340
  Newspaper - 615
  Other Print - 595
  Blog - 130
  Teacher - 57
ONIXMessage/Product/CollateralDetail/TextContent/Text - 54371
ONIXMessage/Product/CollateralDetail/TextContent/TextSourceCorporate - 28952
ONIXMessage/Product/CollateralDetail/TextContent/TextType - 54371
  06 - 28952
  03 - 25419
ONIXMessage/Product/DescriptiveDetail - 57257
ONIXMessage/Product/DescriptiveDetail/Audience - 159645
ONIXMessage/Product/DescriptiveDetail/Audience/AudienceCodeType - 159645
  02 - 82858
  01 - 54387
  19 - 22400
ONIXMessage/Product/DescriptiveDetail/Audience/AudienceCodeTypeName - 104983
  National Council for Social Studies - 29527
  Lexile - 22125
  ATOS - 17311
  Fountas and Pinnell Guided Reading Level - 15397
  Benchmarks for Science Literacy (BSLStandards) - 10729
  Reading Recovery Level - 9433
  NCSS Standards - 193
  Guided Reading Level - 148
  BSLStandards - 52
  NSES Standards - 52
  Reading Recovery - 16
ONIXMessage/Product/DescriptiveDetail/Audience/AudienceCodeValue - 159645
ONIXMessage/Product/DescriptiveDetail/AudienceCode - 54387
  02 - 54110
  04 - 277
```

## About

<img src="https://arkency.com/images/arkency.png" alt="Arkency" width="60px" align="left" />

This repository is funded and maintained by [Arkency](https://arkency.com). Check out our other [open-source projects](https://github.com/arkency), especially [Rails Event Store](https://github.com/RailsEventStore).

Consider [hiring us](https://arkency.com/hire-us) and make sure to check out [our blog](https://blog.arkency.com).
