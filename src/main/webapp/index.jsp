<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8"> 
	<title>This is Homepage layout using bootstrap</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/SinglePageApplication/resources/js/bootstrap-3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/SinglePageApplication/resources/js/bootstrap-3.3.4/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/SinglePageApplication/resources/css/bootstarp_customization.css">
</head>
<body>


<div class="container_fluid">
	<div class="row">
		<div id="headerDiv" class="col-xs-12">
			<h1>This is iNav Header</h1>
		</div>
	</div> <!-- Header row ending -->
	<div class="row">
		<div id="searchWidget" class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
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
		</div> <!-- Search Widget end -->
		<div id="bigPitcure" class="col-sm-8 col-md-8 col-lg-8 bigPitcure">
			<div id="login-anchor"></div>
			<div id="loginDiv" class="no-gutters hide">

   					<h1>This is login</h1>
			</div>
			<div class="row no-gutters">
				<div id="emailSignUpDiv"class="col-xs-12">
					<div class="row">
						<div class="col-xs-8">
							<div class="signUpMessage">
								<h2>SIGN UP FOR SPECIAL OFFERS</h2>
								<p>By entering your email, you are agreeing to receive offers <br/>
									from American Express Travel</p>
							   <div class="input-group">
							      <input type="text" class="form-control" placeholder="Search for...">
							      <span class="input-group-btn">
							        <button class="btn btn-default" type="button">Submit</button>
							      </span>
							    </div><!-- /input-group -->
							</div>
						</div>
						<div class="col-xs-4">
							<div class="socialGrpBtn">
									<p><a class="btn btn-primary btn-lg" href="#" role="button">Like us on Facebook</a></p>
									<p><a class="btn btn-primary btn-lg" href="#" role="button">Follow us on Twitter</a></p>
							</div>
						
						</div>
					</div>

					
					
				</div>
			</div>
		</div>
	</div><!--Content Row ending -->

	<div class="row">
		<div id="footerDiv" class="col-xs-12">
			<p> 
				<strong><sup>1</sup>Double Points:</strong><br/>
				Eligible purchases are travel purchases, excluding car reservations, non-prepaid hotels, and Fine Hotels & Resorts and The Hotel Collection bookings, booked through amextravel.com on your Membership Rewards program-enrolled American Express� Card. To earn 2X points on each dollar of eligible purchases, you must charge air, prepaid hotel, vacation packages (flight + hotel packages), American Express Vacations packages or cruise reservations through amextravel.com to your eligible, Membership Rewards program-enrolled American Express Card. Any portion of a charge that you elect to pay through redemption of Membership Rewards points is not eligible to earn points. Bonus ID A2EM (Air, Hotel, and vacation packages); Bonus ID 5432 (Cruise); Bonus ID 6955 (American Express Vacations Packages). Extra points will be credited to the Membership Rewards account 10-12 weeks after final payment is made.
				See membershiprewards.com/terms for the Membership Rewards program terms and conditions.
 			</p>
			<p>
				<strong>Pay with Points:</strong>
				To use Pay with Points, you must charge your eligible purchase through American Express Travel to a Membership Rewards� program-enrolled American Express� Card. Eligible purchases exclude car reservations, non-prepaid hotels, and Fine Hotels & Resorts and The Hotel Collection bookings. Points will be debited from your Membership Rewards account, and credit for corresponding dollar amount will be issued to the American Express Card account used. If points redeemed do not cover entire amount, the balance of purchase price will remain on the American Express Card account. Minimum redemption 5,000 points.
				See membershiprewards.com/terms for the Membership Rewards program terms and conditions. 
			</p>
			<p>
				If a charge for a purchase is included in a Pay Over Time feature balance on your Linked Account (for example, the Extended Payment Option), the statement credit associated with that charge may not be applied to that Pay Over Time feature balance. Instead the statement credit may be applied to your Pay in Full balance. If you believe this has occurred, please contact us by calling the number on the back of your Card.
			</p>
			</p>
				<strong>Lowest Hotel Rate Guaranteed:</strong>
				If you book a qualifying prepaid hotel rate on amextravel.com and then find the same room, in the same hotel, for the same dates, the same number of children and adults, at a lower price online, before taxes and fees, we'll refund you the difference. The "Lowest Rate Guaranteed" policy applies only to online rates available to the general public and excludes (1) rates or discounts that are not available to the general public, including, but not limited to, corporate, group, charter, meeting/convention, AAA, government/military, and senior citizen rates/discounts; or (2) hotel rooms booked through or in combination with frequent stay, loyalty, points, coupon promotions, rooms won through contests or sweepstakes or transferred, or rooms booked on opaque websites that do not allow you to see the name of the hotel until your reservation is complete, and (3) rates booked through the Fine Hotels & Resorts program and The Hotel Collection. Details
			</p>
		</div>
	</div> <!-- hOME Footer ended -->

	<div class="row">
		<div id="iNavFooter" class="col-xs-12">
			<h1>This iNav footer</h1>
		</div>
	</div> <!-- iNav footer -->
</div>








<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
<script type="text/javascript" src="https://code.angularjs.org/1.3.15/angular-route.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/SinglePageApplication/resources/js/bootstrap-3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/SinglePageApplication/resources/js/app.js"></script>

<script>

$(document).ready(function(){
	function loginDiv_relocate() {
		    var window_top = $(window).scrollTop();
		    var div_top = $('#login-anchor').offset().top;
		    div_top = div_top + 70;
		    if (window_top > div_top) {
		        $('#loginDiv').addClass('loginStick');
		        $('#loginDiv').removeClass('hide');
		    } else {
		        $('#loginDiv').removeClass('loginStick');
		        $('#loginDiv').addClass('hide');
		    }
		}

		$(function () {
		    $(window).scroll(loginDiv_relocate);
		    loginDiv_relocate();
		});
});
	

</script>
</body>
</html>