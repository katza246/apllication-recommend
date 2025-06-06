<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application["Online"] = 0;
    }

    void Session_Start(object sender, EventArgs e)
    {
        Application.Lock();
        Application["Online"] = (int)Application["Online"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e)
    {
        Application.Lock();
        Application["Online"] = (int)Application["Online"] - 1;
        Application.UnLock();
    }

    void Application_End(object sender, EventArgs e)
    {
    }

    void Application_Error(object sender, EventArgs e)
    {
    }

</script>
