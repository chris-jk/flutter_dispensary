//Used  https://app.quicktype.io/ to Generate models and serializers from JSON Schema
//
// To parse this JSON data, do
//
//     final dispensary = dispensaryFromJson(jsonString);

import 'dart:convert';

Dispensary dispensaryFromJson(String str) =>
    Dispensary.fromJson(json.decode(str));

String dispensaryToJson(Dispensary data) => json.encode(data.toJson());

class Dispensary {
  Dispensary({
    this.data,
  });

  Data data;

  factory Dispensary.fromJson(Map<String, dynamic> json) => Dispensary(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.listing,
  });

  Listing listing;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        listing: Listing.fromJson(json["listing"]),
      );

  Map<String, dynamic> toJson() => {
        "listing": listing.toJson(),
      };
}

class Listing {
  Listing({
    this.id,
    this.name,
    this.slug,
    this.state,
    this.bestOfWeedmaps,
    this.bestOfWeedmapsYears,
    this.socialEquity,
    this.city,
    this.type,
    this.wmid,
    this.latitude,
    this.longitude,
    this.webUrl,
    this.packageLevel,
    this.featureOrder,
    this.ranking,
    this.rating,
    this.reviewsCount,
    this.avatarImage,
    this.hasSaleItems,
    this.licenseType,
    this.address,
    this.distance,
    this.zipCode,
    this.timezone,
    this.timezoneDisplay,
    this.introBody,
    this.supportCauseLink,
    this.gofundmeLink,
    this.staticMapUrl,
    this.openNow,
    this.closesIn,
    this.todaysHoursStr,
    this.minAge,
    this.regionId,
    this.promoCode,
    this.menuItemsCount,
    this.verifiedMenuItemsCount,
    this.endorsementBadgeCount,
    this.isPublished,
    this.onlineOrdering,
    this.retailerServices,
    this.hasCurbsidePickup,
    this.hasFeaturedDeal,
    this.menuId,
    this.email,
    this.phoneNumber,
    this.country,
    this.description,
    this.firstTimeAnnouncement,
    this.firstTimeAnnouncementImageUrl,
    this.announcement,
    this.announcementUpdatedAt,
    this.website,
    this.hasHandicapAccess,
    this.hasPhotos,
    this.hasVideos,
    this.acceptsCreditCards,
    this.hasTesting,
    this.isRecreational,
    this.hasAtm,
    this.hasSecurityGuard,
    this.isVerifiedSeller,
    this.hasEndorsementBadges,
    this.hasAgeGate,
    this.hasLabMeasuredItems,
    this.licenseNumber,
    this.licenses,
    this.businessHours,
    this.social,
    this.region,
    this.memberSince,
    this.priceAggregations,
    this.currentDealsCount,
  });

  int id;
  String name;
  String slug;
  String state;
  bool bestOfWeedmaps;
  List<dynamic> bestOfWeedmapsYears;
  bool socialEquity;
  String city;
  String type;
  int wmid;
  double latitude;
  double longitude;
  String webUrl;
  String packageLevel;
  int featureOrder;
  double ranking;
  double rating;
  int reviewsCount;
  AvatarImage avatarImage;
  bool hasSaleItems;
  String licenseType;
  String address;
  dynamic distance;
  String zipCode;
  String timezone;
  String timezoneDisplay;
  String introBody;
  String supportCauseLink;
  dynamic gofundmeLink;
  String staticMapUrl;
  bool openNow;
  int closesIn;
  String todaysHoursStr;
  dynamic minAge;
  int regionId;
  dynamic promoCode;
  int menuItemsCount;
  int verifiedMenuItemsCount;
  int endorsementBadgeCount;
  bool isPublished;
  OnlineOrdering onlineOrdering;
  List<String> retailerServices;
  bool hasCurbsidePickup;
  bool hasFeaturedDeal;
  int menuId;
  String email;
  String phoneNumber;
  String country;
  String description;
  String firstTimeAnnouncement;
  dynamic firstTimeAnnouncementImageUrl;
  String announcement;
  DateTime announcementUpdatedAt;
  String website;
  bool hasHandicapAccess;
  bool hasPhotos;
  bool hasVideos;
  bool acceptsCreditCards;
  bool hasTesting;
  bool isRecreational;
  bool hasAtm;
  bool hasSecurityGuard;
  bool isVerifiedSeller;
  bool hasEndorsementBadges;
  bool hasAgeGate;
  bool hasLabMeasuredItems;
  String licenseNumber;
  List<License> licenses;
  BusinessHours businessHours;
  Social social;
  Region region;
  String memberSince;
  PriceAggregations priceAggregations;
  int currentDealsCount;

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        state: json["state"],
        bestOfWeedmaps: json["best_of_weedmaps"],
        bestOfWeedmapsYears:
            List<dynamic>.from(json["best_of_weedmaps_years"].map((x) => x)),
        socialEquity: json["social_equity"],
        city: json["city"],
        type: json["type"],
        wmid: json["wmid"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        webUrl: json["web_url"],
        packageLevel: json["package_level"],
        featureOrder: json["feature_order"],
        ranking: json["ranking"].toDouble(),
        rating: json["rating"].toDouble(),
        reviewsCount: json["reviews_count"],
        avatarImage: AvatarImage.fromJson(json["avatar_image"]),
        hasSaleItems: json["has_sale_items"],
        licenseType: json["license_type"],
        address: json["address"],
        distance: json["distance"],
        zipCode: json["zip_code"],
        timezone: json["timezone"],
        timezoneDisplay: json["timezone_display"],
        introBody: json["intro_body"],
        supportCauseLink: json["support_cause_link"],
        gofundmeLink: json["gofundme_link"],
        staticMapUrl: json["static_map_url"],
        openNow: json["open_now"],
        closesIn: json["closes_in"],
        todaysHoursStr: json["todays_hours_str"],
        minAge: json["min_age"],
        regionId: json["region_id"],
        promoCode: json["promo_code"],
        menuItemsCount: json["menu_items_count"],
        verifiedMenuItemsCount: json["verified_menu_items_count"],
        endorsementBadgeCount: json["endorsement_badge_count"],
        isPublished: json["is_published"],
        onlineOrdering: OnlineOrdering.fromJson(json["online_ordering"]),
        retailerServices:
            List<String>.from(json["retailer_services"].map((x) => x)),
        hasCurbsidePickup: json["has_curbside_pickup"],
        hasFeaturedDeal: json["has_featured_deal"],
        menuId: json["menu_id"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        country: json["country"],
        description: json["description"],
        firstTimeAnnouncement: json["first_time_announcement"],
        firstTimeAnnouncementImageUrl:
            json["first_time_announcement_image_url"],
        announcement: json["announcement"],
        announcementUpdatedAt: DateTime.parse(json["announcement_updated_at"]),
        website: json["website"],
        hasHandicapAccess: json["has_handicap_access"],
        hasPhotos: json["has_photos"],
        hasVideos: json["has_videos"],
        acceptsCreditCards: json["accepts_credit_cards"],
        hasTesting: json["has_testing"],
        isRecreational: json["is_recreational"],
        hasAtm: json["has_atm"],
        hasSecurityGuard: json["has_security_guard"],
        isVerifiedSeller: json["is_verified_seller"],
        hasEndorsementBadges: json["has_endorsement_badges"],
        hasAgeGate: json["has_age_gate"],
        hasLabMeasuredItems: json["has_lab_measured_items"],
        licenseNumber: json["license_number"],
        licenses: List<License>.from(
            json["licenses"].map((x) => License.fromJson(x))),
        businessHours: BusinessHours.fromJson(json["business_hours"]),
        social: Social.fromJson(json["social"]),
        region: Region.fromJson(json["region"]),
        memberSince: json["member_since"],
        priceAggregations:
            PriceAggregations.fromJson(json["price_aggregations"]),
        currentDealsCount: json["current_deals_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "state": state,
        "best_of_weedmaps": bestOfWeedmaps,
        "best_of_weedmaps_years":
            List<dynamic>.from(bestOfWeedmapsYears.map((x) => x)),
        "social_equity": socialEquity,
        "city": city,
        "type": type,
        "wmid": wmid,
        "latitude": latitude,
        "longitude": longitude,
        "web_url": webUrl,
        "package_level": packageLevel,
        "feature_order": featureOrder,
        "ranking": ranking,
        "rating": rating,
        "reviews_count": reviewsCount,
        "avatar_image": avatarImage.toJson(),
        "has_sale_items": hasSaleItems,
        "license_type": licenseType,
        "address": address,
        "distance": distance,
        "zip_code": zipCode,
        "timezone": timezone,
        "timezone_display": timezoneDisplay,
        "intro_body": introBody,
        "support_cause_link": supportCauseLink,
        "gofundme_link": gofundmeLink,
        "static_map_url": staticMapUrl,
        "open_now": openNow,
        "closes_in": closesIn,
        "todays_hours_str": todaysHoursStr,
        "min_age": minAge,
        "region_id": regionId,
        "promo_code": promoCode,
        "menu_items_count": menuItemsCount,
        "verified_menu_items_count": verifiedMenuItemsCount,
        "endorsement_badge_count": endorsementBadgeCount,
        "is_published": isPublished,
        "online_ordering": onlineOrdering.toJson(),
        "retailer_services": List<dynamic>.from(retailerServices.map((x) => x)),
        "has_curbside_pickup": hasCurbsidePickup,
        "has_featured_deal": hasFeaturedDeal,
        "menu_id": menuId,
        "email": email,
        "phone_number": phoneNumber,
        "country": country,
        "description": description,
        "first_time_announcement": firstTimeAnnouncement,
        "first_time_announcement_image_url": firstTimeAnnouncementImageUrl,
        "announcement": announcement,
        "announcement_updated_at": announcementUpdatedAt.toIso8601String(),
        "website": website,
        "has_handicap_access": hasHandicapAccess,
        "has_photos": hasPhotos,
        "has_videos": hasVideos,
        "accepts_credit_cards": acceptsCreditCards,
        "has_testing": hasTesting,
        "is_recreational": isRecreational,
        "has_atm": hasAtm,
        "has_security_guard": hasSecurityGuard,
        "is_verified_seller": isVerifiedSeller,
        "has_endorsement_badges": hasEndorsementBadges,
        "has_age_gate": hasAgeGate,
        "has_lab_measured_items": hasLabMeasuredItems,
        "license_number": licenseNumber,
        "licenses": List<dynamic>.from(licenses.map((x) => x.toJson())),
        "business_hours": businessHours.toJson(),
        "social": social.toJson(),
        "region": region.toJson(),
        "member_since": memberSince,
        "price_aggregations": priceAggregations.toJson(),
        "current_deals_count": currentDealsCount,
      };
}

class AvatarImage {
  AvatarImage({
    this.smallUrl,
    this.originalUrl,
  });

  String smallUrl;
  String originalUrl;

  factory AvatarImage.fromJson(Map<String, dynamic> json) => AvatarImage(
        smallUrl: json["small_url"],
        originalUrl: json["original_url"],
      );

  Map<String, dynamic> toJson() => {
        "small_url": smallUrl,
        "original_url": originalUrl,
      };
}

class BusinessHours {
  BusinessHours({
    this.sunday,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
  });

  Day sunday;
  Day monday;
  Day tuesday;
  Day wednesday;
  Day thursday;
  Day friday;
  Day saturday;

  factory BusinessHours.fromJson(Map<String, dynamic> json) => BusinessHours(
        sunday: Day.fromJson(json["sunday"]),
        monday: Day.fromJson(json["monday"]),
        tuesday: Day.fromJson(json["tuesday"]),
        wednesday: Day.fromJson(json["wednesday"]),
        thursday: Day.fromJson(json["thursday"]),
        friday: Day.fromJson(json["friday"]),
        saturday: Day.fromJson(json["saturday"]),
      );

  Map<String, dynamic> toJson() => {
        "sunday": sunday.toJson(),
        "monday": monday.toJson(),
        "tuesday": tuesday.toJson(),
        "wednesday": wednesday.toJson(),
        "thursday": thursday.toJson(),
        "friday": friday.toJson(),
        "saturday": saturday.toJson(),
      };
}

class Day {
  Day({
    this.open,
    this.close,
    this.listingOpensAt,
    this.listingClosesAt,
    this.orderOpensAt,
    this.orderClosesAt,
  });

  String open;
  String close;
  DateTime listingOpensAt;
  DateTime listingClosesAt;
  dynamic orderOpensAt;
  dynamic orderClosesAt;

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        open: json["open"],
        close: json["close"],
        listingOpensAt: DateTime.parse(json["listing_opens_at"]),
        listingClosesAt: DateTime.parse(json["listing_closes_at"]),
        orderOpensAt: json["order_opens_at"],
        orderClosesAt: json["order_closes_at"],
      );

  Map<String, dynamic> toJson() => {
        "open": open,
        "close": close,
        "listing_opens_at": listingOpensAt.toIso8601String(),
        "listing_closes_at": listingClosesAt.toIso8601String(),
        "order_opens_at": orderOpensAt,
        "order_closes_at": orderClosesAt,
      };
}

class License {
  License({
    this.type,
    this.number,
  });

  String type;
  String number;

  factory License.fromJson(Map<String, dynamic> json) => License(
        type: json["type"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "number": number,
      };
}

class OnlineOrdering {
  OnlineOrdering({
    this.enabled,
    this.disabledReasons,
    this.isOrdersEnabled,
    this.isLogisticsEnabled,
    this.afterHoursEnabled,
    this.allowHybridCarts,
    this.acceptingOrders,
    this.enabledForPickup,
    this.enabledForDelivery,
    this.identificationRequired,
    this.displayDeliveryDetails,
    this.purchaseMin,
    this.fee,
    this.etaMin,
    this.etaMax,
    this.displayEta,
    this.wmServiceFee,
  });

  bool enabled;
  List<dynamic> disabledReasons;
  bool isOrdersEnabled;
  bool isLogisticsEnabled;
  bool afterHoursEnabled;
  bool allowHybridCarts;
  bool acceptingOrders;
  bool enabledForPickup;
  bool enabledForDelivery;
  bool identificationRequired;
  bool displayDeliveryDetails;
  Fee purchaseMin;
  Fee fee;
  int etaMin;
  int etaMax;
  bool displayEta;
  Fee wmServiceFee;

  factory OnlineOrdering.fromJson(Map<String, dynamic> json) => OnlineOrdering(
        enabled: json["enabled"],
        disabledReasons:
            List<dynamic>.from(json["disabled_reasons"].map((x) => x)),
        isOrdersEnabled: json["is_orders_enabled"],
        isLogisticsEnabled: json["is_logistics_enabled"],
        afterHoursEnabled: json["after_hours_enabled"],
        allowHybridCarts: json["allow_hybrid_carts"],
        acceptingOrders: json["accepting_orders"],
        enabledForPickup: json["enabled_for_pickup"],
        enabledForDelivery: json["enabled_for_delivery"],
        identificationRequired: json["identification_required"],
        displayDeliveryDetails: json["display_delivery_details"],
        purchaseMin: Fee.fromJson(json["purchase_min"]),
        fee: Fee.fromJson(json["fee"]),
        etaMin: json["eta_min"],
        etaMax: json["eta_max"],
        displayEta: json["display_eta"],
        wmServiceFee: Fee.fromJson(json["wm_service_fee"]),
      );

  Map<String, dynamic> toJson() => {
        "enabled": enabled,
        "disabled_reasons": List<dynamic>.from(disabledReasons.map((x) => x)),
        "is_orders_enabled": isOrdersEnabled,
        "is_logistics_enabled": isLogisticsEnabled,
        "after_hours_enabled": afterHoursEnabled,
        "allow_hybrid_carts": allowHybridCarts,
        "accepting_orders": acceptingOrders,
        "enabled_for_pickup": enabledForPickup,
        "enabled_for_delivery": enabledForDelivery,
        "identification_required": identificationRequired,
        "display_delivery_details": displayDeliveryDetails,
        "purchase_min": purchaseMin.toJson(),
        "fee": fee.toJson(),
        "eta_min": etaMin,
        "eta_max": etaMax,
        "display_eta": displayEta,
        "wm_service_fee": wmServiceFee.toJson(),
      };
}

class Fee {
  Fee({
    this.cents,
    this.currency,
    this.amount,
  });

  int cents;
  String currency;
  int amount;

  factory Fee.fromJson(Map<String, dynamic> json) => Fee(
        cents: json["cents"],
        currency: json["currency"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "cents": cents,
        "currency": currency,
        "amount": amount,
      };
}

class PriceAggregations {
  PriceAggregations({
    this.unit,
    this.gram,
    this.ounce,
  });

  Unit unit;
  List<Unit> gram;
  List<Unit> ounce;

  factory PriceAggregations.fromJson(Map<String, dynamic> json) =>
      PriceAggregations(
        unit: Unit.fromJson(json["unit"]),
        gram: List<Unit>.from(json["gram"].map((x) => Unit.fromJson(x))),
        ounce: List<Unit>.from(json["ounce"].map((x) => Unit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "unit": unit.toJson(),
        "gram": List<dynamic>.from(gram.map((x) => x.toJson())),
        "ounce": List<dynamic>.from(ounce.map((x) => x.toJson())),
      };
}

class Unit {
  Unit({
    this.units,
    this.min,
    this.max,
  });

  String units;
  double min;
  double max;

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        units: json["units"],
        min: json["min"].toDouble(),
        max: json["max"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "units": units,
        "min": min,
        "max": max,
      };
}

class Region {
  Region({
    this.id,
    this.name,
    this.slug,
    this.regionPath,
  });

  int id;
  String name;
  String slug;
  String regionPath;

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        regionPath: json["region_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "region_path": regionPath,
      };
}

class Social {
  Social({
    this.facebookId,
    this.instagramId,
    this.twitterId,
    this.youtubeIds,
  });

  String facebookId;
  String instagramId;
  String twitterId;
  List<dynamic> youtubeIds;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
        facebookId: json["facebook_id"],
        instagramId: json["instagram_id"],
        twitterId: json["twitter_id"],
        youtubeIds: List<dynamic>.from(json["youtube_ids"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "facebook_id": facebookId,
        "instagram_id": instagramId,
        "twitter_id": twitterId,
        "youtube_ids": List<dynamic>.from(youtubeIds.map((x) => x)),
      };
}
