Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C519A14F11A
	for <keys@linux.kernel.org>; Wed, 27 Mar 2024 17:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711562165; cv=none; b=RVAweD8EunHymd+0xP4AbnPnPmDrou5dXgt+nwEFJ6AXaXJE1I6KP+9NRncYDfdFXQ+qCvzDilH2c6SdjvVL+vwM+hhHY3+eqN39PB0+/yK/xwZXaILxqms7QKwGqABEgiDbdbNMxJc/NIy0zT8r82SAfCi5ct7b0ylmpy1Zy58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711562165; c=relaxed/simple;
	bh=zyZ7/1Wgv/2Us4i8nFUripgxU+1xSp6sarICDH1Oybo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GWUElZhnKXnDBmpFr+FiQZ7cfFf1z/G6qZznFANUEPV9dDpG9mYnFTyzJS/qxkLBK7GYRg91+JkscmiRj7wDeIgtY1FNgJqWUmbk+JZmibeygfJb01txpKVAckPspIM8wbpj+u5Y9q3z2vHpQBeHdeO1wlXIqFT1MJKUJsitXUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=FEZGFCBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="FEZGFCBM"
Received: by smtp.kernel.org (Postfix)
	id 6CAFBC433F1; Wed, 27 Mar 2024 17:56:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B773C433C7;
	Wed, 27 Mar 2024 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1711562165;
	bh=zyZ7/1Wgv/2Us4i8nFUripgxU+1xSp6sarICDH1Oybo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FEZGFCBM9wryYJ6JRn0tzWzoYJOuGIdU3h2zUQQJe/xT3kg4kzqcbbcpDuYTYwupL
	 k8XYvOiMx0q3dqyOxNbv4c4Q49ljvariD+s89LHkqgNZTKyuVOd+BEAMWZXIcYPhbK
	 klZtHK/bwADEo9BObZyWsQHC+IMiVDfkByqwwuRE=
Date: Wed, 27 Mar 2024 13:56:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: keys@kernel.org
Subject: Re: New Public Key for Maxime Ripard
Message-ID: <20240327-delicate-mindful-cicada-0b5ead@meerkat>
References: <20240327-witty-mackerel-of-refinement-2def3b@houat>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240327-witty-mackerel-of-refinement-2def3b@houat>

On Wed, Mar 27, 2024 at 03:47:55PM +0100, Maxime Ripard wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
