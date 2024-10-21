Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA381FE108
	for <keys@linux.kernel.org>; Mon, 21 Oct 2024 20:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729543918; cv=none; b=LtusK9FGR5uSqQ0TS/Pj8h/inmcSpASRnt7hMqVQjA6HOPjMofih0LXzzCe/jhkZc1WyFtRcfqAKwtvrnuJvinjwhFszGbUw44FmFmk+PPmClQgOcA74eo0HzPiSFeHI8rjYCsRZIS4NRdloB4oVB20GzN/9qb/2kJweGn+5tvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729543918; c=relaxed/simple;
	bh=50XbvqtbjtiackRVv2/RB1wXZBGkGwaqgkXZspZyU10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JXVH3Qz2j2kM4qIJckRdcIQKki+KLQRBwFLHBPb2/br/9uTGAM2P0YD/gHhVmt8mrwmh5LnhLDpuxBy3Ai8f2IzdQgO+NTwR4XHBfejI2RFY51fz6oQF4Dkgpq71KvUHHu2hVtYRrZCHOwSh9Iy1fUIAGXEy4R8nvvnxhGIW3EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=F5KmmU86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="F5KmmU86"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D37DC4CEC3;
	Mon, 21 Oct 2024 20:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1729543918;
	bh=50XbvqtbjtiackRVv2/RB1wXZBGkGwaqgkXZspZyU10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F5KmmU86q5BJBYPZrReSOH+suR35FiNsMPLo0unGJ3PxGutfX4ZyptKJO/y2VS07t
	 1A3L289iBQfHiq46QbtQpMjSFTpRkx3iwXUOJsDVhokR6F/Fkq0pZHFpsssg2Y4rpX
	 YGAyu32VDwknuOrG/3vY5AXeJs2WD25JwwBl+yCw=
Date: Mon, 21 Oct 2024 16:51:53 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Philipp Zabel <pza@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: p.zabel@pengutronix.de
Message-ID: <20241021-cerise-seriema-of-order-84df6a@lemur>
References: <E1szCHv-00C4Zt-35@dude05.red.stw.pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <E1szCHv-00C4Zt-35@dude05.red.stw.pengutronix.de>

On Fri, Oct 11, 2024 at 11:50:23AM +0200, Philipp Zabel wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated. Sorry for the delay.

-K
