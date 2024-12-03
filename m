Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143481AA1EB
	for <keys@linux.kernel.org>; Tue,  3 Dec 2024 20:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733256842; cv=none; b=D44ksxo+EWBd6oEanqcVOZ11GPYCef0rByTvZvRPJLhzYDbNT4sxwEQU5IvkCNI6z/eBAWddDJV/PM+U9Oqzqe3jH4TkDmsS18Yb0WV83phZlXXwzlOUiyA8BeAp98r7wxMIxNx9qo79wzzyjom+5QQRsoPMFb6iPhoDxr5fgO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733256842; c=relaxed/simple;
	bh=MFAQLafqVVWe64m8ctb+JdnyUqek1HlXKbDs9a0pKxU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tI+IUk34RHtP+paMawlUWS/MP09DMJEnv/WwoQody4y+jmr5M0hl9lzoN0pYebf0QiFrjRx8xPebNzuz3EfpSnjaETJiOasfZghxNuw5n2x4bapjO3ooZVIEffSTdoHqckjiv9n4gmj0HLVUo9n6AR/5ZG+FzqlC75wdE5D5g74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=orQt/8Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="orQt/8Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67402C4CECF;
	Tue,  3 Dec 2024 20:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733256841;
	bh=MFAQLafqVVWe64m8ctb+JdnyUqek1HlXKbDs9a0pKxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=orQt/8XpDiavx32EAnlrBB97jR73J/YEU8CXhciBUOEpuG9GdSVbmc02xd6lbTWjy
	 XJWkUmSQ43t5coEbQwmQkf7+KcQnsjuJRXRKbNFComwLRFug+sp4Zp8iAUEdu1TXX8
	 r+ixd+B/NTOQORScB2s+Z1aEjAbRk0pow7dIQeNo=
Date: Tue, 3 Dec 2024 15:14:00 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: New key Alexander Sverdlin
Message-ID: <4g5v53vaxqc4jmozrp3jg2crjihoqcamqhjipqio4m3s562bmu@4bjk6rbn6wnm>
References: <542dc48b07ae0f7f2c0d815c21358540c7b593b1.camel@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <542dc48b07ae0f7f2c0d815c21358540c7b593b1.camel@gmail.com>

On Tue, Dec 03, 2024 at 08:34:10PM +0100, Alexander Sverdlin wrote:
> Hello!
> 
> Please find my signed key for inclusion into the kernel keyring.

Added, thanks.

-K
