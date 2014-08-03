# ASP.NET Custom Errors by Cook's Code

SEO and user friendly error pages for ASP.NET MVC and WebForms apps, and IIS resources.

To install the CC.AspNetCustomErrors NuGet package, run the following command in the [Package Manager Console](http://docs.nuget.org/docs/start-here/using-the-package-manager-console).

    PM> Install-Package CC.AspNetCustomErrors

## Post-install suggestions

* ASP.NET MVC developers are encouraged to remove `filters.Add(new HandleErrorAttribute());` from *FilterConfig.cs* in your *App_Start* folder.
    * This will ensure that MVC errors will have the same look as errors that occur in IIS and ASP.NEt pipelines that are outside of MVC's control.
	* A bonus of removing that action filter is that you will no longer need to jump through special hoops to get error loggers such as ELMAH to log errors in the MVC pipeline. Life just became a little simpler :-)
* Developers may choose to customize the UI of the error pages by modifying the *.aspx* and *Error.Master* in *Error* folder.
* ASP.NET WebForms developers may choose to use their existing master page, and are more than welcome to delete *Error.Master* if it is not needed.

## Learn by watching!

* [What's wrong with ASP.NET Custom Errors](https://vimeo.com/102479910)
* [Installing and configuring the CC.AspNetCustomErrors NuGet package](https://vimeo.com/102417598)
* [Customizing the look of CC.AspNetCustomErrors](https://vimeo.com/102417597)
