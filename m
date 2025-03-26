Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B62E219317
	for <keys@linux.kernel.org>; Wed, 26 Mar 2025 18:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743012112; cv=none; b=tcFWauaCPsdjMCM30ARB8YbZQ6D6dYyQtiFlKiIAf6puRnofLiHm5wD6heVCP+RE0XwUpLF4qP7j+FCKq4s7bVYjp/0ML7lCtcQ+LqoQtJpZ0ajACVfCo5tVjvPHmy2zDEl5T9LF92r1YOkxrvYfmyadJ850sFevn05rwiXEWTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743012112; c=relaxed/simple;
	bh=MYBBivddQkx0LZyXQj9he/HmU28x4aqrdlO8CA6rtEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=glra6+beRIA6qP2AyFAEZQ/8mlpMzNluvMXyX8nvk+hNpSLv+GCNykuozW7Iz2g840WKtEocf1aJTpV/epaSeLea44LWYzuUcSieqPGWlGic62Y/QJVP64tHcwTQMbTyzwhfzgBFNRw5hz4cYlZQMNQNfREWSEr1B3JMk+nlP4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=oFKLIh0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="oFKLIh0P"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C63FC4CEE2;
	Wed, 26 Mar 2025 18:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1743012111;
	bh=MYBBivddQkx0LZyXQj9he/HmU28x4aqrdlO8CA6rtEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oFKLIh0PIqbOBwohAsUy6Mk3cWQTmhBJdi6ipBdZaVzZjdtlZweJ/DQ3WMzkLAobJ
	 660vZ4BJCeY1SxLk9MmAUOinr26HslvOQNGLmsUEMKRSGf5JXv+cVszwtFTnbPZ2Ij
	 lhs/50uyDZ6AHkt7u8AUBUDvklWmtPP+bCzBoafo=
Date: Wed, 26 Mar 2025 14:01:50 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: mkorpershoek@kernel.org
Message-ID: <20250326-eager-devious-mussel-3fff92@lemur>
References: <8734f0umqd.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8734f0umqd.fsf@baylibre.com>

On Wed, Mar 26, 2025 at 11:09:46AM +0100, Mattijs Korpershoek wrote:
> Hello,
> 
> Looking at [1], it seems that my kernel.org uid was not added.
> 
> I've attached a new export of 570338B018144F28 which contains that UID.
> 
> Can we update the keyring, please?

Updated, thanks!

-K
