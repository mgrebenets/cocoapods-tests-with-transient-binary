import SplunkMint

public class CrashAnalytics {
    public static func initAndStartSession(appReportingID: String) {
       Mint.sharedInstance().initAndStartSession(appReportingID)
    }
}
