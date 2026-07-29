Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59C4238166
	for <keys@linux.kernel.org>; Wed, 29 Jul 2026 14:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785335216; cv=none; b=n9Nk0Sp9kTnCcsN8KMPm5PDYAtswxmCcIhsL7tfwnkyDY1oSo7hNyTqG8TONrhFf6P56Ga76/cPJOfgZHSr3ihfWxtP1oyXvz5vQXPxcZpaNIM3XKJLLT6l3gRwVWFN9m/kpzsYCIsZK3ERs+CYpjU0Zv4Uzobnq50rNnT7XbqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785335216; c=relaxed/simple;
	bh=hPFpRfEvYEWn9Tfnd/u0tBxxXWVBXk/N99wvBjM1Yqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e+heUW9n11L5FA0+tYPpp7+0r1P1cNdz0xvZ2x2fDWxddlySg7WuDZD6vVcMG9MPafJm/PUfwTcJgSp3n5docVvCxLFUqbjBC32MEyuOLxYFCtFyvCRQPwBs7SkkEXEpEzZSeTQpy1qRgkqCxzFWcENnB3NYhug2/6CrXATkK6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGcgfCME; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGcgfCME"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58A931F000E9;
	Wed, 29 Jul 2026 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785335215;
	bh=hPFpRfEvYEWn9Tfnd/u0tBxxXWVBXk/N99wvBjM1Yqg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DGcgfCMEqTfoMfvGcafJFqDixj4oTkP+8RUag8JhZFsKOXkHrMX6FutHI2Xy/4yEn
	 lReSYk5bpArcp7zdBhH0vIKoyIYotU0Xp448tKid1MJkcMtEHhD6K/LUw550Njafgv
	 vbWsiuG/vMRmLvU0x2W2n3w1hTNPSzhbWcc3YifrbFat9hFsJK7IK9aLK+IZULTxu+
	 wdWn1gsRs0fRVGv9wWpcqGJ4S5Iy7jA6b6cDpw4My+Ls8ZO4z/1ETxru7Tj2/th3hD
	 MrN14MJoNp2oei2HEaEpvD9CVvamADjWXlwAHswLqfX0LchmOMs1G9RjSM6SS4R0+D
	 lqOYS+yPKQUcw==
Date: Wed, 29 Jul 2026 10:26:54 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: keys@linux.kernel.org
Subject: Re: heiko@sntech.de
Message-ID: <20260729-warm-peach-dachshund-81dd0b@meerkat>
References: <3383405.aV6nBDHxoP@phil>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3383405.aV6nBDHxoP@phil>

On Tue, Jul 28, 2026 at 04:56:29PM +0200, Heiko Stuebner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
