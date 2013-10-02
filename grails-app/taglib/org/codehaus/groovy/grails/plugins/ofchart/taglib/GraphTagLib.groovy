package org.codehaus.groovy.grails.plugins.ofchart.taglib

import jofc2.model.Chart

class GraphTagLib {

  static namespace = "ofchart"

  def chart = { attrs ->

    if (!attrs.name)
      throwTagError("Tag [chart] is missing required attribute [name]")

    String name = attrs.remove('name')

    String width = attrs.width ? attrs.remove("width") : "350"

    String height = attrs.height ? attrs.remove("height") : "200"

    String url = attrs.url? attrs.remove("url") : ""


    out << "<div id='$name' name='$name'></div>\n"

    out << """
          <script type="text/javascript">
            swfobject.embedSWF("${createLinkTo(dir:pluginContextPath,file:'open-flash-chart.swf')}", "$name", "$width",
              "$height","9.0.0", "expressInstall.swf", {"data-file":"$url"},{'wmode':'transparent'});
        </script>
    """

  }
  
  def modelChart = { attrs ->

      if (!attrs.name)
          throwTagError("Tag [chart] is missing required attribute [name]")
      if (attrs.model && !(attrs.model instanceof Chart))
          throwTagError("attribute [model] of Tag [chart]  is not a instance of jofc2.model.Chart")

      String name = attrs.remove('name')

      name = name.replaceAll('-', '_')

      String width = attrs.width ? attrs.remove("width") : "350"

      String height = attrs.height ? attrs.remove("height") : "200"

      String data = attrs.model ? attrs.remove("model").toString() : new Chart().toString()


      out << "<div id='$name' name='$name'></div>\n"

      out << """
        <script type="text/javascript">
          var ${name}data=${data};
          function get_data_${name}(){
              return JSON.stringify(${name}data);
          }
          swfobject.embedSWF("${resource(plugin: 'ofchart', file: 'open-flash-chart.swf')}", "$name", "$width",
            "$height","9.0.0", "expressInstall.swf",{'get-data':'get_data_${name}'},{'wmode':'transparent'});
        </script>
  """
  }
  
  def resources = {
    out << """
            <script type="text/javascript" src="${createLinkTo(dir:pluginContextPath,file:"js/swfobject.js")}"></script>
            <script type="text/javascript" src="${createLinkTo(dir:pluginContextPath,file:"js/grails-ofchart.js")}"></script>  
            <script type="text/javascript" src="${createLinkTo(dir:pluginContextPath,file:"js/json2.js")}"></script>  
           """
  }


}
