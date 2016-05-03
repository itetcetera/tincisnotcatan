<#assign content>

<div class="background-viewport">
	<div class="hexagon-wrapper-home" id="animated-hex">
		<div class="hexagon-home"></div>
	</div>
</div>

<div class="container-fluid text-center">
	<h1>CS032 Catan</h1>
	<div class="row">
		<div class="col-xs-2"></div>
		<div class="col-xs-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Create a Game</h3>
				</div>
				<div class="panel-body">
					<form action="/board" method="get" id="inputForm">
						<input id="lobbyNameEntry" class="form-control" placeholder="Lobby name">
						<div class="form-group">
							<label for="numPlayersDesired">How many players in this game?</label>
							<select id="numPlayersDesired" class="form-control">
								<option value="4">4 players</option>
								<option value="3">3 players</option>
							</select>
						</div>
						<button id="startGameButton" class="btn btn-success">Create Game!</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xs-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Join a Game</h3>
				</div>
				<form action="/board" method="get" id="existingGameForm">
					<ul class="list-group" id="games-list">
						<li class="list-group-item">No available games. Create your own!</li>
					</ul>
				</form>
			</div>
		</div>
		<div class="col-xs-3"></div>
	</div>
</div>

<div class="modal fade" id="name-entry-modal" tabindex="-1" role="dialog" aria-labelledby="nameEntryLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
      		<div class="modal-header">
      		    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title" id="nameEntryLabel">Please Select Username</h4>
      		</div>
      		<div class="modal-body">
				<input id="nameEntry" class="form-control" placeholder="Username">
      		</div>
      		<div class="modal-footer">
        		<button type="button" id="enter-game-btn" class="btn btn-success" data-dismiss="modal">Enter Game</button>
      		</div>
    	</div>
	</div>
</div>

</#assign>
<#include "main.ftl">
<script src="js/home.js"></script>

