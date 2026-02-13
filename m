Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21C42C11E2
	for <keys@linux.kernel.org>; Fri, 13 Feb 2026 21:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771019478; cv=none; b=qs9JLSNPqFEfnduFw+PKoxS+cGa21hodgA9zxdE43Wp0TRFkAee8CUGCFwuPBlvfXZfzpcJ81JsdQPDd4X5Xs6UifzNCG48qm7oIFmKxEKfYUHWkSjwZxZt5ShOSmF0HzUSuGcURzciVUhAQpWFWcwDlqZlHwqLgG5n2JDAIeWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771019478; c=relaxed/simple;
	bh=kYESFMTlgTReNcdNJWQ+hAoVNKAmWAZmdy1TqiESff0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nSqBJ8j0ZYzGGAsqU2Fps1/S9UD3pAdha92epEsykgzxaanpw9V9RGe5KhncdZ/1TYah0pP2Quiv/oXfr81Ugc5/Mvzdfg3STjXdOz9Q/7rPTNiheNGUXE3yXRmc22wousQPHDp9dp6qG5rPYdLdqYW18bXl59jhv3J25pElfBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyVDaine; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyVDaine"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B258C116C6;
	Fri, 13 Feb 2026 21:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771019478;
	bh=kYESFMTlgTReNcdNJWQ+hAoVNKAmWAZmdy1TqiESff0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fyVDaineUoq5tU4SL9ZhH4nORCmftztKinrpLomQYA3c/9a2A5eRgwkmn8LlzgC8s
	 KpTVynjm6i/hNDi8yl7he1s/8IHUQkdGkBnbdpNL4YH6dbbte0AKgEMSo6UQvXaXM0
	 IRsdKlGWMs2JtRa6U/XLDaUpkjLDCDUPPUMvp9QNdm0kg/QRUROrId6/V4DpwL5gCc
	 lmH2BgIZN6qjReSAq00Yn3Rknj6SEHJTkWTq4rPGa21cvik0vt1rKWGkbFiUY/gv62
	 1+8HHkMS6pOEemcqOagtmqw1Mk6aetGg6gfuNnN/O0K0sWKTeu475lZO6CprT55YHP
	 qO7SsLy/coW7g==
Date: Fri, 13 Feb 2026 16:51:16 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org, Yanteng Si <siyanteng01@gmail.com>, 
	Zhi Wang <zhi.wang.linux@gmail.com>, Zhi Wang <zhi.a.wang@intel.com>, Jessica Yu <jeyu@kernel.org>, 
	Jessica Yu <jeyu@posteo.de>, Jessica Yu <jeyu@suse.de>, 
	Neeraj Upadhyay <neeraj.iitr10@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Daniel Lezcano <daniel.lezcano@free.fr>, Daniel Lezcano <daniel.lezcano@linexp.org>, 
	Frank Rowand <frank.rowand@sony.com>, Frank Rowand <key_111017@frowand.com>, 
	Frank Rowand <frank.rowand@am.sony.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frank.rowand@sonymobile.com>, Frank Rowand <frowand.list@gmail.com>, 
	Frank Rowand <frank@frowand.com>
Subject: Re: [PATCH] Remove keys that expired in 2025
Message-ID: <20260213-enlightened-white-mantis-3ebfd6@lemur>
References: <20260122092019.22201-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260122092019.22201-2-u.kleine-koenig@baylibre.com>

On Thu, Jan 22, 2026 at 10:20:20AM +0100, Uwe Kleine-König wrote:
> there are three keys with UIDs that I think Konstantin invented. i.e.:
> 
> Bothersome Borer <bothersome-borer@kernel.org>
> Confounding Cockroach <confounding-cockroach@kernel.org>
> Aggravating Aphid <aggravating-aphid@kernel.org>
> 
> Not sure what they are used for, but I guess Konstantin knows if they
> can/should go away.

I'm slowly going through my backlog -- thank you for your patience. This
patch no longer applies, I think because some keys actually got updated since
then.

To explain what the above ones are for, they are used by remail:
https://korg.docs.kernel.org/remail.html

The keys are created as needed with a 5-year expiry, so they can indeed be
removed now.

-K
