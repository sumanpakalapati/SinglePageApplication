<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html ng-app="ctt.responsive.home">
<head>
<title>American Express Travel: Flights, Hotels, Cars, Cruises &
	Vacation Packages</title>
<meta name="keywords"
	content="American Express, americanexpress, travel, booking, flight, hotel, car, vacation, cruise, vacation package, travel offer, travel alert, travel discount." />
<meta name="description"
	content="Book a cruise or find travel tips, travel discounts and travel adventures with American Express Travel. " />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta http-equiv="content-language" content="en" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="https://travel.americanexpress.com/home" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	 href="http://localhost:8080/SinglePageApplication/resources/css/ctt_responsive_home.css">


<script type="text/javascript">
	var excludeOmniture = true;
	var omn_hierarchy = "US|Travel|Hub";
	// below statement for vulnerability fix
	if (top != self)
		top.location.href = self.location.href;
</script>

</head>
<body class="gemini AXP_Responsive">
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<%-- iNav Header --%>
				<%@include file="iNavHeader.jsp" %>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				<ul class="nav nav-tabs">
				 	<li class="active"><a data-toggle="tab" href="#flight">Flight</a></li>
				    <li><a data-toggle="tab" href="#hotel">Hotel</a></li>
				    <li><a data-toggle="tab" href="#flightHotel">Flight+Hotel</a></li>
				    <li><a data-toggle="tab" href="#car">Car</a></li>
				    <li><a data-toggle="tab" href="#cruise">Cruise</a></li>
				</ul>
				<div class="tab-content">
                  <div id="flight" class="tab-pane fade in active">
                     <form role="form">
                      <label class="radio-inline"><input type="radio" name="optradio">Round Trip</label>
                      <label class="radio-inline"><input type="radio" name="optradio">One Way</label>
                      <div class="input-group">
                         <span class="input-group-addon" id="basic-addon1">@</span>
                         <input type="text" placeholder="From" id="usr">
                      </div>
                       <div class="input-group">
                         <span class="input-group-addon" id="basic-addon1">@</span>
                        <input type="text" placeholder="To" class="form-control" id="usr">
                      </div>
                       <div class="input-group">
                         <span class="input-group-addon" id="basic-addon1">@</span>
                        <input type="text" placeholder="To" class="form-control" id="usr">
                              <span class="input-group-addon" id="basic-addon1">@</span>
                        <input type="text" placeholder="To" class="form-control" id="usr">
                      </div>
                      <p>
                       <button type="button" class="btn btn-primary btn-lg">Search Flight + Hotel</button>
                       <button type="button" class="btn btn-primary btn-lg">Search Flitghts</button>
                     </p>
                     </form>

                  </div>
                  <div id="hotel" class="tab-pane fade">
                      <h3>Hotel</h3>
                  </div>
                  <div id="flightHotel" class="tab-pane fade">
                    <h3>Flight + Hotel</h3>
                  </div>
                  <div id="car" class="tab-pane fade">
                    <h3>Car</h3>
                  </div>
                  <div id="cruise" class="tab-pane fade">
                    <h3>Cruise</h3>
                  </div>
              </div>

			  <div class="jumbotron text-center"
					style="margin: 30px; border-radius: 0px; background-color: #f3f3f3;">
					<img src="http://t.wallpaperweb.org/wallpaper/nature/1600x1200/Cades_Cove_Sunrise_Great_Smoky_Mountains_Tennessee.jpg"
						style="height: 50px; width: 50px;" />
					<p style="font-family: Arial; font-size: 18px; font-family: BentonSans-Bd, Arial, Helvetica, sans-serif; margin-top: 20px; color: #4D4F53">WHY
						BOOK WIHT US ?</p>
					<p style="font-size: 12px; font-family: Arial; text-align: center; color: #4D4F53">Enjoy
						double rewards and more when you book with amextravel.com</p>
					<a href="http://www.w3schools.com" style="color: #4D4F53">Learn More</a>

				</div>
				<div class="jumbotron text-center" style="margin: 30px; border-radius: 0px; background-color: #f3f3f3;">
					<p style="font-family: Arial; font-size: 18px; font-family: BentonSans-Bd, Arial, Helvetica, sans-serif; color: #4D4F53">$50
						hotel credit</p>
					<p style="font-size: 12px; font-family: Arial; text-align: center; color: #4D4F53; margin-top: 20px;">Get
						a $50 hotel credit to use during your stay at selected properties.</p>
					<a href="http://www.w3schools.com"
						style="color: #002663; font-family: arial; font-size: 10px; font-weight: normal;">Learn More</a>

				</div>
			</div>
			<div class="col-sm-8" style="border-width: 4px; border-style: groove;">
				<div class="row">
					<div class="col-sm-12">
						<img
							src="http://t.wallpaperweb.org/wallpaper/nature/1600x1200/Cades_Cove_Sunrise_Great_Smoky_Mountains_Tennessee.jpg"
							class="img-responsive" style="width: 100%" />
						<div class="bigPitchStyle">
							<h1 style="letter-spacing: 0.06em;">MEMBERSHIP HAS ITS
								REWARDS</h1>
							<p
								style="font-family: Arial; font-size: 12px; font-weight: bold;">Log
								in and enjoy more benefits when you book with your american
								express card</p>

						</div>
						        				
						   <div ng-controller="TripControllerV2" class="trips">
                            <input type="hidden" id="secToken" name="secToken" ng-model="secToken"
                            ng-init="secToken='<core:out value = '${sessionScope.userSummaryBean.sapBean.encryptedSecurityToken}' escapeXml='false'/>'"
                            value="<core:out value = '${sessionScope.userSummaryBean.sapBean.encryptedSecurityToken}' escapeXml='false'/>" />
                            <input type="hidden" id="MRKey" name="MRKey"
                                value="<core:out value = '${sessionScope.userSummaryBean.mrSummary.mrAccountNumberKey}' escapeXml='false'/>" />
                            <input type="hidden" id="MRCode" name="MRCode" value="100" />
                            <input type="hidden" id="tpGUID" name="tpGUID" ng-model="tpGUID"
                                ng-init="tpGUID='<core:out value = '${sessionScope.userSummaryBean.sapBean.tpGUID}' escapeXml='false'/>'"
                                value="<core:out value = '${sessionScope.userSummaryBean.sapBean.tpGUID}' escapeXml='false'/>" />
                             <a href="#" class="btn btn-info btn-lg" ng-click="getFutureTrips()">Get Trips</a>
                             <div ng-view>
                                  <h2>(You have an upcoming trip in)</h2>
                                  <ul>
                                    <li ng-repeat="futureTrip in futureTrips| orderBy:'-departureTime'">
                                      <span>{{futureTrip.departureTime | date:'yyyy-MM-dd HH:mm:ss Z'}}</span>
                                      <span>{{futureTrip.destinationCity | uppercase}}</span>
                                      <span>{{futureTrip.tripPackage |uppercase}}</span>
                                   </li>
                                  </ul>
                          </div>
                        </div>
					</div>
				</div>					
				<div class="row" style="border: none; background: white;">
					<div class="col-xs-6" style="margin-bottom: 30px;">
						<div class="travelRewards">
							<img src="http://www.w3schools.com/images/w3schools_green.jpg"
								style="float: right; height: 155px; margin-left: -15px; width: 155px;" />
						</div>
					</div>
					<div class="col-xs-6">
						<div class="travelRewards">
							<h1 style="text-transform: uppercase">turn points into
								travel rewards</h1>
							<p style="font-size: 10px; color: #03225C;">Transfer
								Membership Rewards points to your favourite traveler program or
								use points for a wide range of travel gift cards and
								certificates - including hotel stays, car rentals, theme parks
								and more.</p>
							<a href="http://www.w3schools.com"
								style="color: blue; letter-spacing: 0.02em; font-family: Arial; font-size: 10px; font-weight: bold">Learn
								more about Rewards</a>
						</div>
					</div>
				</div> 
				<div class="row" style="border: none; background: white; height: 300px;">
					<div class="col-xs-6" style="">
						<img
							src="http://t.wallpaperweb.org/wallpaper/nature/1600x1200/Cades_Cove_Sunrise_Great_Smoky_Mountains_Tennessee.jpg"
							class="img-responsive"
							style="width: 100%; height: 300px; margin: 0" />
						<div style="color: white; text-transform: uppercase; left: 20%; position: absolute; text-align: center; text-shadow: 1px 1px 2px; top: 20%;">
							<h3>EXPLORE WOLRD WORLD</h3>
							<h3>TOP RATED HOTELS</h3>
							<hr style="width: 60px; color: white; height: 2px">
							<p
								style="font-family: Arial; font-size: 12px; font-weight: bold; letter-spacing: 0.02em; text-shadow: 1px 1px 2px;">Lets
								Go</p>
						</div>
					</div>
					<div class="col-xs-6 travelOffersStyle">
						<h3>EXPLORE WOLRD WORLD</h3>
						<h3>top rated hotels</h3>
					</div>
				</div>
				<div class="row" style="border: none; background: white;">
					<div class="col-xs-12" style="">
						<div style="color: black">
							<div class="jumbotron text-center" style="margin: 50px;">
								<div style="">
									<h2 style="text-transform: uppercase">travel insiders</h2>
									<h2 style="text-transform: uppercase">ready whenever,
										whereever</h2>
									<div
										style="margin-top: 30px; text-align: center; font-family: arial; font-size: 15px;">Our
										travel insiders have in-depth knowledge and will design a
										customized trip itinerary with your passions and personal
										interests in mind.</div>
									<div style="margin-top: 34px; text-transform: uppercase">
										<span style="margin-right: 20px""><a
											href="http://www.w3schools.com">learn about insiders</a></span><span
											style="margin-left: 20p;"><a
											href="http://www.w3schools.com">find a travel office</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="border: none; background: white; height: 300px;">
					<div class="col-xs-6 travelOffersStyle">
						<h3>EXPLORE WOLRD WORLD</h3>
						<h3>TOP RATED HOTELS</h3>
					</div>
					<div class="col-xs-6 travelOffersStyle">
						<h3>EXPLORE WOLRD WORLD</h3>
						<h3>top rated hotels</h3>
					</div>
				</div>
				
				<div class="row">
					<div id="emailSignUpDiv" class="col-xs-12" ng-controller="CheetaMailController">
						<div class="row">
							<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" >
								<div class="signUpMessage" ng-show="showEmailSignUpMessage">
									<h2>SIGN UP FOR SPECIAL OFFERS</h2>
									<p>By entering your email, you are agreeing to receive offers <br/>
										from American Express Travel.<a href="https://www212.americanexpress.com/dsmlive/dsm/int/internetprivacystatement.do?vgnextoid=1afe214407d5c210VgnVCM100000defaad94RCRD" title="Our privacy policy" alt="Our privacy policy" id="privacy_policy" tabindex="5700">Our privacy policy</a>
								</p>
								<div class="input-group">
								     <span class="input-group-btn">
								        <button id="" class="btn btn-default" type="button">
								        	<span class="glyphicon glyphicon-envelope"></span>
								        </button>
								      </span>
								      <input type="text" class="form-control" placeholder="Email Address" ng-model="emailAddress">
								      <span class="input-group-btn">
								        <button id="emailSignUpBtn" class="btn btn-default" type="button" ng-click="submitEmailSignup()">Submit</button>
								      </span>
								    </div>
								</div>
							    <div class="signUpMessage" ng-hide="showEmailSignUpMessage">
									<div class="right hideDiv" id="success_sign_up" style="display: block;">
										<div class="mainMessage">Thank you for subscribing.<span  class="glyphicon glyphicon-remove" ng-click="closeSuccessMessage()"></span></div>
										<div class="subMessage">Keep an eye out for great travel offers and ideas from American Express Travel.</div>
									</div>
								</div>		
							</div>
							<div id="socialMediaDiv" class="col-sm-4 col-md-4 col-lg-4">
									<div id="faceBookDiv">
										<p><a class="btn btn-default btn-lg" href="http://facebook.com/americanexpress" role="button">Like us on Facebook</a></p>
									</div>
									<div  id="twitterDiv">
										<p><a class="btn btn-default btn-lg" href="http://twitter.com/americanexpress" role="button"> Follow us on Twitter</a></p>
									</div>
								</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>	
	
		<div class="row">
			<div class="col-xs-12 SuigglyBackground">
				
			</div>
		</div>
	
		<div class="row">
			<div class="col-xs-12">
				<%@include file="cttHomeFooterContent.jsp" %>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-12">
				<%@include file="iNavFooter.jsp" %>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="http://localhost:8080/SinglePageApplication/resources/js/cttResponsiveHomeApp.js"></script>

</body>
</html>
