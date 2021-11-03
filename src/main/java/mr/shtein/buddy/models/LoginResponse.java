package mr.shtein.buddy.models;

public class LoginResponse {
    private UserInfo userInfo;
    private String error;

    public LoginResponse() {
        error = "";
    }

    public UserInfo getToken() {
        return userInfo;
    }

    public void setToken(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}
