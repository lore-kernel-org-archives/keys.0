Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C2D36AB6F
	for <keys@linux.kernel.org>; Tue, 17 Feb 2026 14:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771338052; cv=none; b=bejdoqZd1u+fiVhCo+t10vSRqF6gPaYl8YlIWRZsPiWZwJp/US4y8+Kpr4y4v49OTVsejrch7EoHetoURsvZI+SS5HGgomudqYPalRreDMUHgPsCUZgRJCy36ipBZlqktwv4pvCbqGob/bDyJCST0KVFtiCPAmzHO63TD7eWFg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771338052; c=relaxed/simple;
	bh=niI2B0WmdUEezGEl7jPW5kj0vteYvJxIAKtPXvDuAek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J1n6o7+3fz5yFo+EPApzcIaPOohozAdTDGa7Mbhp2cex+FM9DHRbWGFIaBfg/9+87vBwjXxdycay1S6zB0zck0nWj78Glta1XKdQmyya426FooODQZ0pIEWF7uBugxQSBp71ms8yksSXTVkNyaxDdrcxwL8P1bSIZxj28T4GsG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOhBt+TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOhBt+TH"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20C1DC4CEF7;
	Tue, 17 Feb 2026 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771338052;
	bh=niI2B0WmdUEezGEl7jPW5kj0vteYvJxIAKtPXvDuAek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oOhBt+THGSK4409R/yFg0QnC4s7Kj+m/BsGG0Gi7oomEfbW4GIxaHuDBp9AyITRXE
	 wrJepoQACvuR5sY4DY1/Gg2JhXnXppWGyj0qaVIV6FoodYlHcFgoMRiY0Wumt5Kn9H
	 ReJCoQw/L2iiX/owdnG7qvg9bYHip9UTFWf7clZcGDxRFqWJWObudAMAjy30ipOqUa
	 GsE7nOawq5a2RXArgkBrqb/BVOp9pLXv/p0kKAI94Q167uEQSX5k2vacOIksE3BdeE
	 R+2bLJzD7Ivv/Lc84bDB/QPEGG9kUJZVHYCjl/XfEa1BKlv/kX5JM+LIF235pIRc6j
	 q9K7EjYEkhzrw==
Date: Tue, 17 Feb 2026 09:20:50 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Seth Forshee <sforshee@kernel.org>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Subject: Re: key AB4800A62DB9F73A (Seth Forshee) expired
Message-ID: <20260217-secret-baboon-of-realization-eacc82@lemur>
References: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>
 <aYIQdlikYqHwps3I@do-x1carbon>
 <20260213-magic-rare-termite-bb1cb4@lemur>
 <aZO7Gga9RCRIidFg@ubuntu-x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aZO7Gga9RCRIidFg@ubuntu-x1>

On Mon, Feb 16, 2026 at 06:49:30PM -0600, Seth Forshee wrote:
> Yes, my apologies. Updated now.

Got it, thanks!

-- 
KR
