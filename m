Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3118A1F94C
	for <keys@linux.kernel.org>; Thu, 22 May 2025 14:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925292; cv=none; b=WkNj/OxxxS8SXw7Ej3zpuNmJPuwoefC4P3+CMc5WKk00M1W86n40IK/9O2lJNmZ3e7UomBUzLJ7X7fG6uaEgAc4V5HLjXhgqA0A+oeabRJejduJ8LEsbmfMNBGjSEJ0fsh0AZYEhHJoOUwch44/+F/Bq3OLMUk2Gw+tWd4ppBEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925292; c=relaxed/simple;
	bh=8btoRBM5o8zZzjCDv8olm+d8qNP2ekOXt/+/dL3mpwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mY7PykN7BjXOsBU8+vAw1hDYzaqY/OF02VO1gODqKRZdUxP1KklP45+JWwXYBRsHkCLhtSByeGvbZZdCI10IwzDJ1FeNmQentm8n8oGhVq2wDdLJvp2T+oUJJ+hm592H3g614wbOAj8DOw1yItQrJ4kUh9uZRGsbhGRoH2/j9mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=vcDyRHel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="vcDyRHel"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59CF4C4CEE4;
	Thu, 22 May 2025 14:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1747925291;
	bh=8btoRBM5o8zZzjCDv8olm+d8qNP2ekOXt/+/dL3mpwg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vcDyRHelaKjcL+AOjdfyxxAD0XH3vvc3wOh4NuHUyuJnp0laEEIy+mh1llZoSN5ZE
	 GFzC5W1ut0rQdk7COPJNZLtKwJjhNN6jVu3kTBRy6OVwoPinbpSGCMtV4jvzEqPTcx
	 VhbA7R1KNhBgKQgjkIZs1fu9EwbDl6wZ/AZh6Luk=
Date: Thu, 22 May 2025 10:48:10 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jai Luthra <jai.luthra@linux.dev>
Cc: keys@linux.kernel.org
Subject: Re: Add key for jai.luthra@linux.dev
Message-ID: <20250522-deft-quartz-cormorant-e32d51@meerkat>
References: <ycwhuaocffuxi6j7lsqx6wp2ulnigfnrzidiyb3n5r7gyidtwe@43y6j672wtyh>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ycwhuaocffuxi6j7lsqx6wp2ulnigfnrzidiyb3n5r7gyidtwe@43y6j672wtyh>

On Tue, May 20, 2025 at 12:10:50PM +0530, Jai Luthra wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added, thanks!

-K
