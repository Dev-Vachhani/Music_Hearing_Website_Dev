<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Music.aspx.cs" Inherits="Projects.Music" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" align="center" bgcolor="lightgreen"><b><u>Playlists🎼</u></b></td>
        </tr>
        <tr>
            <td style="width: 307px" rowspan="2"><b>90's Bollywood:</b></td>
            <td><a href="https://open.spotify.com/playlist/37i9dQZF1DXa2huSXaKVkW" target="_blank">Purani Yaade</a></td>
        </tr>
        <tr>
            <td><audio src="Classic%20Romantic%2090's%20Mashup%202%20-%20DJ%20Dharak(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td style="width: 307px" rowspan="2"><b>Latest:</b></td>
            <td><a href="https://open.spotify.com/playlist/1qk7sHSUKBuKeDaMeTQqMY" target="_blank">Naye Dhamake</a></td>
        </tr>
        <tr>
            <td><audio src="Bollywood%20Mashup%202022%20-%20Dj%20Vakil(PagalWorld.com.se).mp3" controls="controls" />
                </td>
        </tr>
        <tr>
            <td style="width: 307px" rowspan="2"><b>Garba:</b></td>
            <td><a href="https://open.spotify.com/playlist/2v1pGuX4JiAX9euk0qOWHp" target="_blank">Gujarati Nasho</a></td>
        </tr>
        <tr>
            <td>
                <audio src="Navratri%20Mashup%202022%20-%20Naresh%20Parmar(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td style="width: 307px" rowspan="2"><b>Mix:</b></td>
            <td><a href="https://music.youtube.com/playlist?list=PLK3jHrwVOXlHatQHBHmZEq7cdy7ykJDqQ&feature=share" target="_blank"> Gym Mix Masala</a></td>
        </tr>
        <tr>
            <td>
                <audio src="The%20Gangsters%20Mashup(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        
        <tr>
            <td rowspan="5"><b>Sidhu Moosewala👳:</b></td>
            <td><a href="https://open.spotify.com/artist/4PULA4EFzYTrxYvOVlwpiQ" target="_blank">Legend</a></td>
        </tr>
        <tr>
            <td>
                <audio src="295(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td>
                <audio src="The_Last_Ride_1.mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td>
                <audio src="Devil(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td>
                <audio src="Selfmade(PagalWorld.com.se).mp3" controls="controls" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="logout" runat="server" BackColor="#CC3300" BorderColor="Aqua" BorderStyle="Double" BorderWidth="7px" ForeColor="Black" Height="34px" OnClick="logout_Click" Text="Log Out" Width="128px" />
            </td>
        </tr>
    </table>

</asp:Content>
