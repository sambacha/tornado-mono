<script>

	let value = "ETH"
	let tokens = ["ETH","DAI", "USDC", "FXS"]
</script>
<svlete:head>
	<title>Twister</title>
</svlete:head>
<main>
	<h1>twister demo</h1>
	<container>
		<token-select>
			<descriptor>
				token
			</descriptor>
			<select bind:value>
				{#each tokens as token}
					<option value={token}>{token}</option>
				{/each}
			</select>
		</token-select>
	</container>
</main>

<style>
	@import url("https://fonts.googleapis.com/css?family=IBM+Plex+Sans&display=swap");
 @font-face {
	 font-family: 'IBM2';
	 font-style: normal;
	 font-weight: 400;
	 src: url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap');
 }
 	:global(body) {
		background-color: #121212;
		font-family: "IBM Plex Sans";
	}
	main {
		text-align: center;
		padding: 1em;
	}
	h1 {
		color: #60ADD7;
		font-size: 4em;
		font-weight: 100;
	}
	container {
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		width: 400px;
		height: 400px;
		padding: 30px;
		border: 3px solid #60ADD7;
		border-radius: 30px;
	}
	token-select {
		width: auto;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
	}
	descriptor {
		color: white;
		float: left;
		font-size: 1.5em;
		margin: 15px 0px;
	}

	select {
		align-self: stretch;
		color: white;
		background-color: transparent;
		border-radius: 5px;
		padding: 10px;
		border: 3px solid #60ADD7;
	}
</style>