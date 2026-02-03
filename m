Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7942EFD8C
	for <keys@linux.kernel.org>; Tue,  3 Feb 2026 15:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770131575; cv=none; b=prup9Iq4CI7M1OQYt/bEwVnTpCRIBqcrw10pwCeQMf+pZVB1eBuCgzaq9fnALIIbDQBoVxUmtqF1yAkUkaNlPBfeHpJ5HuNc4lPAtRO4l9aHbbHDQoFfb+vQfjViPXzRHRRyGoyn5wyjcqKD/cCoQKJDPJdTupJdkPdHG9vfQD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770131575; c=relaxed/simple;
	bh=cYYagUXplJdcajW1zp7OOUpYGctmVDrFl3BuI7QKtF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLBCK4u3rqgoYUS61PY6hyS0VaCRcIfcadcZ1+SyNaqNXzMHZa2ClVTx0s6R3iq0RJhATS0/k/jzBUxozm9ImlopoQXGFLbKhY2l9u7AgbC4Q5A1Gcvzwzq6MEYWRpq67G4VdmIrBQU3WrJEntX5sl8NOkcfTmLcDchT7ztiy0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWs0IH+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWs0IH+R"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40A5FC116D0;
	Tue,  3 Feb 2026 15:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770131575;
	bh=cYYagUXplJdcajW1zp7OOUpYGctmVDrFl3BuI7QKtF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aWs0IH+RJRIK3bROVYZPTKzfC0/QjeEJeWG4GMUK2f09wDY/rW5GwmNLLjcB3RDAk
	 KRF2uTOa0Ojyh7dcyUaKmzLcW+hpi6xu6SANrrX27KImYECIv09TOdRcUfqSNheVho
	 jMcnvEZZHA9C9b82mA85l7KfVQYyJ9wdJDY/Ez2F/Whal1GCmdaKPlLjZp07F8k9Ef
	 350epJmjzJ6cCSB6QKaW9NSJmtBdWGLxuRufPlkm/QYWVZZg3OQfCosNzWGBL9Hq7w
	 SPm3hEJbQN8hqyHO+fXGFiCxZ65UheuEyobV4E2EXir6/RFIG1BTkNHaI0oH2RpXnL
	 3g3ksIXvJF1zg==
Date: Tue, 3 Feb 2026 09:12:54 -0600
From: Seth Forshee <sforshee@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: key AB4800A62DB9F73A (Seth Forshee) expired
Message-ID: <aYIQdlikYqHwps3I@do-x1carbon>
References: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>

On Thu, Jan 29, 2026 at 10:20:00AM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> this is a quick FYI that your PGP certificate AB4800A62DB9F73A in the
> version that is tracked in
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/keys/AB4800A62DB9F73A.asc
> expired earlier this month.
> 
> If you don't use this key for kernel work any more, please let us know.
> Otherwise I suggest to expand the key's expiry date by doing e.g.:
> 
> 	gpg --quick-set-expire 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A 2y
> 	gpg --keyserver hkps://keys.openpgp.org/ --send-key 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A
> 
> to extend the expiry by 2 years.

Ah, I guess I forgot to put a reminder on my calendar. I'll get it
updated. Thanks for the heads up!

Seth
