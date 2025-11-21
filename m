Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534BF2E9EDD
	for <keys@linux.kernel.org>; Fri, 21 Nov 2025 16:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743207; cv=none; b=N/fnZav+BWZjOJSYP/jZ/DPZFvertww1USfr+XjPlsO9Cy4/rWs16swThJPx46ylh/j7cpDkAfr4IZ3tNEGjqHQF9ePA4Bf8HIE+7Xf2GoVL0+6Xq7Zo+RDDEIY7iIADMYqW0d/PjDdAOTKCvoXXnSKTrDNTt+bJuhhyq5tBxTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743207; c=relaxed/simple;
	bh=Urp2LeDod/zFpQKZl4ilchfaQ/jcizdIj5+kS4cqfu4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mZjksN49UuJLSHPGKXpJ4tBjmp4gXuk+WbI1DvrrKTb0IJfwLsNpCKMKluYarmE0Xbjx2Ge9YEmeaqRqVrg/TsGv+1y4DRumrbi8N46mA4Be9IOEN8AN0otmWVGTyPes123RSWfsEt+D8Ba1cKUxSa7AoyJ5KCKJaqy9EOwcSYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=WFWYcafx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="WFWYcafx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98653C4CEF1;
	Fri, 21 Nov 2025 16:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1763743204;
	bh=Urp2LeDod/zFpQKZl4ilchfaQ/jcizdIj5+kS4cqfu4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WFWYcafxX18x0V2VZcNfwx5aWpsmdX4ukujKswUat/wtfVIUMqiTlFve2a7q274jC
	 oAabDLvA6D7gOMrTZWfFJCQazNZEBpLGREI5/DXKQVzC8U5gsq9up8ehPs18GNr8mN
	 TzvyXQHpPgBztjh3Jb+IKUXjot0tbloK2JB5W/ks=
Date: Fri, 21 Nov 2025 11:40:00 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: keys@linux.kernel.org
Subject: Re: Update Key for vigneshr@ti.com
Message-ID: <20251121-mottled-lavender-ara-08ab9f@lemur>
References: <75bd0a44-dda6-4119-bd87-af7dc017a8a1@ti.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <75bd0a44-dda6-4119-bd87-af7dc017a8a1@ti.com>

On Fri, Nov 21, 2025 at 02:30:08PM +0530, Vignesh Raghavendra wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
