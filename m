Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC6128DD0
	for <keys@linux.kernel.org>; Mon,  5 Feb 2024 16:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707150730; cv=none; b=s9fem2F4wCWlFzSowqBCJRQlyAmN+IFwpWT5i5QSTeKDXi0NIfGrcUy6pjKvbUpZ8Gkw/bgnjiqqw+Wjt88rkRPVlNrxa8ePYYKo7k2f1SI27Txakl5P5m7BkFDhh316eoL0Dx+A2l4BXyBU8m+BqfNKbq21dRyLOi9JwN8/YgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707150730; c=relaxed/simple;
	bh=1A2npL7YD/hvVZAQtmGn0EpX2gtkMTNcxkee42QipCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mbtoa7/y1W/R0DtBceWGQdOhFHPKjbRQ9GegXIAb62sDGEDsNJcSpM7tyXH+sP8sGXKpyR97q5evIA74eLG+/siKGKmb+ge/dPGXbsb8E6Rn0MUCNxKNrasrpwm0gDHpZadH/FMBxa9WdFFhSdS6xAd+LU9x9kprvIzPXu+I44I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=IKRx19+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="IKRx19+P"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7DE9C433C7;
	Mon,  5 Feb 2024 16:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1707150730;
	bh=1A2npL7YD/hvVZAQtmGn0EpX2gtkMTNcxkee42QipCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IKRx19+PGkAVb4QlJNq+poOiMFmFK6GEtTdE8WglkyGFoHiuR7H+1JT6z8Joz6e4h
	 PKMa5QVQ2UWLGq47mhHp85OuyNI3X046lXrQeBGTu1flZFL3ypKp62kSNDz/gurEAz
	 rbWyt/6UUzZlGFQYBO0zi3mURQV1FGPES6WtD8Ac=
Date: Mon, 5 Feb 2024 11:32:06 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Boqun Feng <boqun.feng@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Request to add my key into the kernel developer keyring
Message-ID: <20240205-fuzzy-mustard-mosquito-87c6c7@meerkat>
References: <Zb85svHiBS8Hpiwy@tardis>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zb85svHiBS8Hpiwy@tardis>

On Sat, Feb 03, 2024 at 11:16:02PM -0800, Boqun Feng wrote:
> Hi,
> 
> Could you please add my key into the linux kernel developer keyring?

Key updated.

-K
