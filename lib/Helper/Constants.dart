
//old live url http://app.bellacontactlenses.com


class Constants {
    //https://www.dgca.gov.kw/
    //https://192.168.1.15/bella/api/

    static const Map header = {"Content-Type":"application/x-www-form-urlencoded",
        "Accept":"application/json",
        "DeviceId": "A962F88F-B6E5-43D7-9CAC-2D43978A7BBE",
        "NST": "${stringsModel.nst}" ,
        "Accept-Language": "en"};
    static const baseurl = ";https://bellacontactlenses.azurewebsites.net";

    static const apiUrl = "${Constants.baseurl}/api/";
    static const DeviceId = "UIDevice.current.identifierForVendor!.uuidString";


    static const loginUrl = "${Constants.apiUrl}login";
    static const setGuestUserUrl = "${Constants.apiUrl}/customer/GuestUser";
    static const changePasswordUrl = "${Constants.apiUrl}customer/changepass";
    static const signupUrl = "${Constants.apiUrl}customer/register";
    static const resendVerificationCodeUrl = "${Constants
        .apiUrl}customer/resendactivationcode";
    static const verifyUserUrl = "${Constants
        .apiUrl}customer/passwordrecoverycheck";
    static const resetPassword = "${Constants
        .apiUrl}customer/passwordrecoverychange";
    static const forgotPasswordUrl = "${Constants
        .apiUrl}customer/passwordrecovery";
    static const tokenUrl = "${Constants.apiUrl}customer/setfcmToken?token=";
    static const appStatusUpdate = "${Constants.apiUrl}ActiveApps";


    static const getAddress = "${Constants.apiUrl}customer/addresses";
    static const addAddress = "${Constants.apiUrl}customer/address/add";
    static const ediotAddress = "${Constants.apiUrl}customer/address/edit";
    static const removeAddress = "${Constants.apiUrl}customer/address/remove";
    static const selectAddress = "${Constants
        .apiUrl}checkout/checkoutsaveadressid";

}
    class HomeConstant {
    static const getHomeCategoriesUrl = "${Constants.apiUrl}v1/homepagecategories";
    static const getCategoryUrl = "${Constants.apiUrl}v1/categories?shoProduct=false&isCelebrities=false&rootCategoryId=0&loadSubCategories=false&datacount=";
    static const getBannerUrl = "${Constants.apiUrl}homepagebanner";
    static const getCollectionUrl = "${Constants.apiUrl}v1/categories?shoProduct=true&isCelebrities=false&loadSubCategories=true&datacount=0&rootCategoryId=";
    static const getCelebritiesUrl = "${Constants.apiUrl}v1/categories?shoProduct=true&isCelebrities=true&loadSubCategories=false&rootCategoryId=0&datacount=";
    static const getCategoryDetailsUrl = "${Constants.apiUrl}Category/";
    static const getHomepageproductsUrl = "${Constants.apiUrl}/homepageproducts";
    static const searchUrl = "${Constants.apiUrl}autocompconste";
    static const getPopularSearch = "${Constants.apiUrl}popularkyewords";
    static const setPopularSearch = "${Constants.apiUrl}SaveSearch";
    }

    class userUrl {
    static const profileUrl = "${Constants.apiUrl}customer/info";
    }

    class infoUrl {
    static const aboutAppUrl = "${Constants.apiUrl}topics/";
  //  static const socialLinksUrl = "${Constants.apiUrl.infoUrl.aboutAppUrl}sidemenu";
    static const getCountryUrl = "${Constants.apiUrl}country/getCountry";
    static const getAreaByCountryUrl = "${Constants.apiUrl}country/getstatesbycountryid";
    static const getCurrencyUrl = "${Constants.apiUrl}getcurrency";
    static const setCurrencyUrl = "${Constants.apiUrl}setcurrency";
    static const getLanguageUrl = "${Constants.apiUrl}GetLanguage";
    static const setLanguageUrl = "${Constants.apiUrl}SetLanguage";
    static const adsUrl = "${Constants.apiUrl}Advisements";
    static const setNotificationStatusUrl = "${Constants.apiUrl}customer/SetNotification";
    static const getNotificationStatusUrl = "${Constants.apiUrl}customer/getnotificationstatus";
    static const notificationUrl = "${Constants.apiUrl}getlistofnotification";
    static const removeNotification = "${Constants.apiUrl}deconstecustomernotification";

    }

    class items {
    static const rateProductUrl = "${Constants.apiUrl}product/productreviewsadd/";
    static const productDetails = "${Constants.apiUrl}productdetails";
    static const favListUrl = "${Constants.apiUrl}shoppingCart/wishlist";
    static const removeFavUrl = "${Constants.apiUrl}ShoppingCart/UpdateWishlist";
    }

    class cart{
    static const addToCartUrl = "${Constants.apiUrl}AddProductToCart";
    static const updateCartUrl = "${Constants.apiUrl}AddProductToCart/1/1";
    static const removeFromCartUrl = "${Constants.apiUrl}ShoppingCart/UpdateCart";
    static const getCartUrl = "${Constants.apiUrl}ShoppingCart";
    static const couponUrl = "${Constants.apiUrl}ShoppingCart/ApplyDiscountCoupon";
    static const removeCouponUrl = "${Constants.apiUrl}ShoppingCart/RemoveDiscountCoupon";
    }

    class order{
    static const getOrdersUrl = "${Constants.apiUrl}order/customerorders";
    static const getOrdersDetailsUrl = "${Constants.apiUrl}order/details/";
    static const reorderUrl = "${Constants.apiUrl}order/reorder/";
    static const orderPdfUrl = "${Constants.apiUrl}order/getpdfinvoice/";
    static const checkOutUrl = "${Constants.apiUrl}shoppingcart/checkoutorderinformation";
    static const checkOutCompconsteUrl = "${Constants.apiUrl}checkout/checkoutcompconste";
    static const getPaymentMethod = "${Constants.apiUrl}checkout/checkoutgetpaymentmethod";
    static const setPaymentMethod = "${Constants.apiUrl}checkout/checkoutsavepaymentmethod";
    static const setStatusPayment = "${Constants.apiUrl}checkout/paymentcallback";

    }


    class stringsModel {
    static const fontName = ";Helvetica";
    static const boldFontName = ";HelveticaNeue-Bold";
    static const nst = ";eyJhbGciOiJIUzUxMiJ9.eyJOU1RfS0VZIjoiYm05d1UzUmhkR2x2YmxSdmEyVnUifQ.adqiIzFjqZdpJw5uHOHjE5qw2UvCDH2FwMmwlYvr5ljKyPG65ZQe_4wb8NYEQFXmyZZyVu-77xd5Njn310cjMw";


    }

    class storyboards {
    static const main = ";Main";
    static const settingsStoryboard = ";SettingsStoryboard";
    static const registrationStoryboard = ";RegistrationStoryboard";
    static const cartAndOrdersStoryboard = ";CartAndOrdersStoryboard";
    }


    class dateOfBirthDateRange {
    static const startDate = ";4/7/1994";
    static const minDate = ";1/1/1950";

    }


