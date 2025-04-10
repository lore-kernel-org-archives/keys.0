Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A31EC006
	for <keys@linux.kernel.org>; Thu, 10 Apr 2025 15:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744300770; cv=none; b=taoI4ceKMVfkIrZXRGviyO2TASxzN3hFKn84GmEaj+lY+7sZDTxeqUFv6WRbzpdpyDBSxQdn3pZvQ5RnVZHbWWVapCoOsBsDwNiCAlT9A59ioGS76g7RrBl5MEWE+GmNVOCnuUKBQ0G1Q2lJi/5BhBBKni9RJOBYeVRurz8wXFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744300770; c=relaxed/simple;
	bh=YaMe8J277GuQlJrhFU3xGR0Ktzx/uwrwmMWH3Ld92U0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OgGhysg5+tM4yxHd85DQk+KDD94+gWm0f84jPChZ3PUAAt/BEbQ/q2yoOnpM1Q3b+zyKo5SIhZfqTUM9Y5m0tbhGP97Uewh6kic8Uhi8WlLShHEonrST/kWhptJ7y0vBO3sOrHkd+2tbHgGSSjWp1LjH37W8dbTkIyiMhpFER/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=AJA/imW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="AJA/imW0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F32C4CEDD;
	Thu, 10 Apr 2025 15:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1744300769;
	bh=YaMe8J277GuQlJrhFU3xGR0Ktzx/uwrwmMWH3Ld92U0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AJA/imW0yGd5eLQ+iwj+zPBpsHdaE91FO/hrXAvayb0yCHyQEs/HJkyeiQawRmBmA
	 qhXGuiVbY78RCS1KyqmeH8BGGcssmA81UkbEKbUDqm9nny61QVE6etB+Ll5at2xw37
	 JhIJl/+C7tVPSq8bj2pGOL1F+T0JbVMvkFb8OsKM=
Date: Thu, 10 Apr 2025 11:59:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, keys@linux.kernel.org
Subject: Re: update for 26BCFA05FCF60E4C.asc
Message-ID: <20250410-convivial-heavenly-oyster-bbfea8@lemur>
References: <wptdly55jnnsddob2t5emtd4kgzzxur36f3iskbt63xo6ffu7k@wgtkjr7tgyss>
 <ir2bphnfyx4iyqeasp3vr7frpizeprtt4dl7rdcdfzqsu3bbmu@zi4s7tnhbzl7>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ir2bphnfyx4iyqeasp3vr7frpizeprtt4dl7rdcdfzqsu3bbmu@zi4s7tnhbzl7>

On Thu, Apr 10, 2025 at 05:48:46PM +0200, Uwe Kleine-König wrote:
> Looking at the diff there is also a new signature by Jacek Anaszewski,
> who also has their key in the keyring (BD6A501CB78B7C26), however this
> isn't taken into account by wotmate because it's not on the primary UID.
> 
> Is that a concious choice to only consider signatures on the primary
> UID?

I think so, because we only list the primary UID in the graph.

-K
