Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84499253938
	for <keys@linux.kernel.org>; Fri,  2 May 2025 13:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746192164; cv=none; b=jQxy0rTnEhHYfGSl/uP8aATyXPiJ7VsVuhwbJjAGsjd0L7FMIvNxmkiWQmlKK9gtVdrguk8Dm2CHQspuIsVidWNiXguwbEQVgtTMVu+JinKtkBk1ZWbfBMObvXgB1QQao6O1H0/jU7f5jYLKHB+uOvBBHfLYQ7cYH8Tc7Z4glNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746192164; c=relaxed/simple;
	bh=zl71gX4NKMRQ72O3GcDI0IQLKfD70lJqlQsYfdvoxgY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JFe1v/I88XkES9k4CzZrdsd848CdkPW2BM217zBq4ido2w83gUhWaDVXZOIvojQXsd5m6XFmUk7zFrsBqvGESgC4+wQiWGvz2j9bNM4UqYSvtCGKv4QGR3HKi4emJJ7weJfc2VRK/AdpmTlcG5YetzGeIbpgx3Y4uRFe1O+mTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=R2PqzjEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="R2PqzjEL"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC0E0C4CEE4;
	Fri,  2 May 2025 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1746192164;
	bh=zl71gX4NKMRQ72O3GcDI0IQLKfD70lJqlQsYfdvoxgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R2PqzjELHdDFThBC06kYs5JevsHwCcqOMiacyxS6Ob6ooebQDZ76jjsy8lcU5fWAR
	 H5+nCIEnKBqzd608kf7EWsGk2t8fXgBNcmsX4I/8LSouarb/9znCiNEl0IaRFWGjQY
	 OQlMWfQkcr10Wca6nUDbPVLUX953DiPTiH4smwBQ=
Date: Fri, 2 May 2025 09:22:42 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: keys@linux.kernel.org
Subject: Re: Key for Yixun Lan
Message-ID: <20250502-resourceful-coucal-of-wind-1edc5e@lemur>
References: <20250502123252-GYA432925@gentoo>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250502123252-GYA432925@gentoo>

On Fri, May 02, 2025 at 12:32:52PM +0000, Yixun Lan wrote:
> Hi,
> 
>  I'd request to add my gpg key to kernel.org keyring,
> which will be used for my kernel development activity.
>  see attached file

Hello:

There are no cross-signatures that we recognize. To be included into the
keyring, you will need to have your key signed by someone who is already in
the kernel.org web of trust. Please re-submit once you are able to get a
signature.

Best regards,
-K
