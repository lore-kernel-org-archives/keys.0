Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8772E54672
	for <keys@linux.kernel.org>; Wed, 14 Feb 2024 14:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707919767; cv=none; b=r0aKaxnBCPtNRlnxEhwBEMo9Ukv7IUYDjruRlZ2XzafIOEPpY90+hlmOwOgHt7SEGMql1hPVm4nT0E6/ZB9YEZ2obOuNJHFT6jDNk/mBvvk5LWX9juetyiURjH5vDMtuCC8+2KQBgpcXRGeMNPsnJ+6FduUixSwgHqXgjBUuVR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707919767; c=relaxed/simple;
	bh=lKsM+aOAESDejOLShQ//yI7P4lOVVztkg1funIAOAXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ba3g4GMC+ANe4U2Gy1BMgnaAomli5MYaPRSZ2Q3vwbfveJtc8rd8L2yjyMj+roppFpRpuB7JL2DU6IJAupq4Q1wZD4G5duFNhGymVG1cNTUYWLmL918acjzm6ygvdXm8280FfIqfT4GGEp7MJ+o+XtgQD+JVKQPKy0JSvS0Q2II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=JH39cCwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="JH39cCwV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4D06C433F1;
	Wed, 14 Feb 2024 14:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1707919767;
	bh=lKsM+aOAESDejOLShQ//yI7P4lOVVztkg1funIAOAXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JH39cCwVk7BxsSxPvv2p6kE2OFtAa6YRQZimrctFdlCzuDEF4YxoYY5sq68XjEc0H
	 fzWcvYyayzhepWRyfnlVPQinclVBLpF2tFvMbpJ2reKmmNMKEKOEk3Eol0OhUyAn4Z
	 oP8WT/vOIotgsubScWz09j2wyURCjExN/DzgyD6Q=
Date: Wed, 14 Feb 2024 09:09:20 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: your mail
Message-ID: <20240214-upbeat-sawfish-of-speed-3ab94e@lemur>
References: <CAPDyKFoP2gVQPJArZJ_DfKXX9a25ASWTyUPQEgvo-74siL=hYg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAPDyKFoP2gVQPJArZJ_DfKXX9a25ASWTyUPQEgvo-74siL=hYg@mail.gmail.com>

On Fri, Feb 09, 2024 at 01:30:34PM +0100, Ulf Hansson wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
