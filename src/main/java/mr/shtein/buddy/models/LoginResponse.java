package mr.shtein.buddy.models;

public class LoginResponse {
    private LoginInfo loginInfo;
    private String error;

    public LoginResponse() {
        error = "";
    }

    public LoginInfo getLoginInfo() {
        return loginInfo;
    }

    public void setLoginInfo(LoginInfo loginInfo) {
        this.loginInfo = loginInfo;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}
