Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4102A3191B9
	for <keys@linux.kernel.org>; Tue, 13 Jan 2026 22:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768342099; cv=none; b=Ii8iq1IDpJqtXVbA61ETQD3mMQ1Ihgi1mwkFaamEujA7Ftq1nQOSs1FeAxEws8vHn4fvXuo/8KAkNwDTkhrTNC2LwYv1rOJaxLT6bnynseLbdP2apqQArWMnCAjWcY8V1kr7nKKmMiC5Hm1a2D06KCbbQIRCcQhPdLDqYapGYV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768342099; c=relaxed/simple;
	bh=TxxPGU3TcWZkWJDAzd9/UlOkwXMVPdJczPvgJ8MRBAw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jwAK6/AGSeJu85jll4gBbR7HzapywVNwTq6lto8XbTXZ0txA5M9bjeB3t8NzC0tqIGjLOSMEuczbMW2bDxnf4R45Aaed2vigO27vykj4e+dF2uQfqEwZnTl472yjX3AxqXX9MiEeUm7SXvXYXyqmZOwuIFIGiLSVmFjd+utHhT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Pn8ths6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Pn8ths6j"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1707C116C6;
	Tue, 13 Jan 2026 22:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1768342098;
	bh=TxxPGU3TcWZkWJDAzd9/UlOkwXMVPdJczPvgJ8MRBAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pn8ths6jQXCTqB4KegmNn38X23lQS4ydgE6dWIWjKbBln6ByjVvwaZyfxeoGGYLHH
	 DSTaPSIrhkZxaWNMecfYP8vQG2SC3upMbXRjSLpwoFD/d5btAE8fWfy/nI5bbuckWo
	 qIaV8xuIb5hcJZw/SwZ5KonKvvYwEyq1G1uk7jNI=
Date: Tue, 13 Jan 2026 17:08:17 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Geert Uytterhoeven
Message-ID: <20260113-crystal-weightless-fennec-3d4ca7@lemur>
References: <20260111153148.3619552-1-geert@linux-m68k.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260111153148.3619552-1-geert@linux-m68k.org>

On Sun, Jan 11, 2026 at 04:31:43PM +0100, Geert Uytterhoeven wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.
