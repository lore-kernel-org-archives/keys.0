Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E59CA4E
	for <keys@linux.kernel.org>; Sat,  4 Oct 2025 13:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759584277; cv=none; b=IUkMUcRJNvwV2/ObsqemobfC41wzjD7jcfOTvm3qLyTfij3VOsws+kePw3MtlI0bvtl3RKQodlE7qD1oSxSaQqwWVD2cUO1JlV4bIoGnX8OIEeGYfoVJH3s/lKOLkmIX0hHbxPQGnL7scAiUumXcGc+sWgxkdv6UH3VTCqKrTTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759584277; c=relaxed/simple;
	bh=2N1HEKZW4C6p4BgqbvDZKODSgrbC6OB3nX+jMjjqSwc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AD5pg1vZ1EjAPnFMC+SmtsBnms79kg98TYYk42iweRqk/ys16kAb6bLlDgcpRhTonmCUyMOfPelUKwwz9XBPxMG3UsaHRAt8+EZdWuCAkpnN3uYUzA/uXCGewXymQ+sQbN/0mdkmDBmWBIjXEItn9N0nO1WEluuyOy6uRbghAPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=rTZG4vA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="rTZG4vA0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D258FC4CEF1;
	Sat,  4 Oct 2025 13:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1759584277;
	bh=2N1HEKZW4C6p4BgqbvDZKODSgrbC6OB3nX+jMjjqSwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rTZG4vA0q5v7SrK+diN3fQqei4gruD6UFkam9qxfi+O3Y8OR0vkUcoPxynGMaFFQQ
	 vb33lcnuW/Sitg6Jnx5Q4PWuxvegMginEzp7uGb5E1TPHFahM2e14jtid3+w1Puptl
	 2Vx9gw+RbJhqoUjDqiteS1oLkuIEEZXwu2KXziBs=
Date: Sat, 4 Oct 2025 09:24:33 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: keys@linux.kernel.org
Subject: Re: Key for Thorsten Blum
Message-ID: <20251004-versed-scorpion-of-joviality-ebfaf5@lemur>
References: <d64dbce2354fac9bd6fcac2f847ea1e9168e1018@linux.dev>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d64dbce2354fac9bd6fcac2f847ea1e9168e1018@linux.dev>

On Sat, Oct 04, 2025 at 12:52:52PM +0000, Thorsten Blum wrote:

Added, thanks.

-K
