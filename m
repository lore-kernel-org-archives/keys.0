Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830AE253F05
	for <keys@linux.kernel.org>; Thu,  4 Sep 2025 20:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757017738; cv=none; b=MOhkbRIZvYO4JAqoFdAhEVk3LQaSFtVyq0IHauxLvA/BsyiKRw+wptFU7XVZOT2hFvM+nBTLL3lxg0kqSYbk+1xigxVOOBqv6x9+kgfE89WmMDjMCoIMq5Hc0XfQL6/31XBG4LwftXo5kg/qQz3hY5PfUMPeW7llsko3r1yR7Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757017738; c=relaxed/simple;
	bh=70khAyTL28NA+vyW08PmX4USqFcQde0kfeABZY5r3/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QhiLJLYHdn22MsO10Ri1cD6ei+WoB5SyInuDhPv7gjXcAFs10a+gg/ubpdYP3AT6Yz3UbQ8j+H0plA3p0xZGAFQLk4b2Lj8RI/JsB1tM18DTBtHAibsvi92fI7F0rrxJP8HApz0CRvKQhRoBftbTEj+DQj/v/rEWBMdBW1oDV+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=iJWlTN59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="iJWlTN59"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA069C4CEF0;
	Thu,  4 Sep 2025 20:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757017738;
	bh=70khAyTL28NA+vyW08PmX4USqFcQde0kfeABZY5r3/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iJWlTN599B23Ny1MmshGNnqH6AmxmC/3nlIdiHD9WxaH2S0xl0J8I2k/Dr7rn7abw
	 /AJ5V63cPwTCPL1Ar0PTC/KlZjbvHwqvOB9O9519N/rhVhPvzkjTAWL2hg/V0aBu4S
	 27tnJVSnnvw/of+Qq/KLX1mrTNRLe/3EKdkWlq7Q=
Date: Thu, 4 Sep 2025 16:28:56 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Paul Walmsley <paul@pwsan.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for myself with new E-mail address added
Message-ID: <20250904-sly-celadon-adder-2bbaac@lemur>
References: <04195f9b-dae2-eac8-d109-196fa5cfe872@pwsan.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <04195f9b-dae2-eac8-d109-196fa5cfe872@pwsan.com>

On Thu, Sep 04, 2025 at 01:51:10PM -0600, Paul Walmsley wrote:
> 
> Hi folks,
> 
> I'm switching over to my pjw@kernel.org E-mail for kernel work, and have 
> updated my PGP key accordingly.  Please find it attached (per the 
> instructions at https://korg.docs.kernel.org/pgpkeys.html )

Updated, thanks!

-K
