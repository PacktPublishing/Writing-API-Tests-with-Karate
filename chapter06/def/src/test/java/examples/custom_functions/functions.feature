Feature: Custom functions

  Scenario: 
    * def kmToMiles = function(km) { return km / 1.6 }
    * def milesToKm = function(miles) { return miles * 1.6 }
    * assert kmToMiles(16) == 10
    * def miles = kmToMiles(90)
    * match miles == 56.25
    * match milesToKm(miles) == 90
    * def someOtherFunctionName = kmToMiles
    * match 2 == someOtherFunctionName(3.2)

  Scenario: Using JSON templates
    * def title = 'Testing APIs'
    * def pages = 250
    * def chapters = ['Core concepts', 'Setup']    
    * def titleBackwards = function(title) { return title.split("").reverse().join(""); }
    * def format = null
    * def book =
    """
      {
        title: '#(title)',
        pages: #(pages),
        chapters: #(chapters),
        totalChapters: #(chapters.length),
        totalChaptersPlusIntro: #(chapters.length + 1),
        titleBackwards: '#(titleBackwards(title))',
        format: '##(format)'
      }
    """
    * print book
    * match book.title == title
    * match book.pages == pages
    * match book.chapters == chapters
    * match book.totalChapters == 2
    * match book.totalChaptersPlusIntro == 3
    * match book.titleBackwards == 'sIPA gnitseT'
    
  Scenario: Using XML templates    
    * def title = 'Testing APIs'
    * def pages = 250
    * def format = null
    * def book =
    """
      <book>
        <title>#(title)</title>
        <pages>#(pages)</pages>
        <format>#(format)</format>
      </book>
    """
    * def book = book.book
    * print book
    * match book.title == title
    * match parseInt(book.pages) == pages