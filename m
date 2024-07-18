Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAFF1B86D0
	for <keys@linux.kernel.org>; Thu, 18 Jul 2024 16:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721318966; cv=none; b=mTH7NaXxOI5VSOT+NuldkqI+VkFKtAEUOIojwMRFJ4FWmDz7gBiS141CeDlmV+e7xvtKt0yuja83pH6bBkQEILGoeF9nYekm8+Y25LVRPzRsXNptovFDE4s3pH/Nk2usEqAqYNHAYERRRIW/Ouo2kPeDxiwbXUEkaDyMIDtzjJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721318966; c=relaxed/simple;
	bh=shR5xzLBPH9Ct2CZ7eqwA8i1Uf0FMfs6/dAAl6HvGYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aXMqBh58XwRvo7vEpEPJFvy3QiMn+W1ILtpxZL2HqrkGM795/XOvhhM+zK0LaZEq7xjcc6wqKZoP6tL142CVY2oVi9IyI1CiC05Oq4w4cbbr07qsMbyU2aDmuAK25/TNoGgwq5enIfqIegSwV2sWx6FmWTtgVADLmjywYQwvI/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=f8aCCOAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="f8aCCOAh"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D02EC116B1;
	Thu, 18 Jul 2024 16:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1721318966;
	bh=shR5xzLBPH9Ct2CZ7eqwA8i1Uf0FMfs6/dAAl6HvGYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f8aCCOAheUjeln8DZyWD8IvBPW6KhM68fhZtidl9QyLRVuuQzMkWokl6L1dtwCIil
	 MfXL5/L/sdwXxlUsItNAzd/rJiU9gdfRNsDwq0EaP3bHgcxWud+OgV4IbdJ2KdNneK
	 qkUUdZSTLF2RSrVcVeb0UtdL+mwfslcYKSIEZPok=
Date: Thu, 18 Jul 2024 12:09:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: keys@linux.kernel.org
Subject: Re: daniel@iogearbox.net
Message-ID: <20240718-fast-sage-turtle-b5e4ad@meerkat>
References: <653fef47-6df5-6100-c65e-52655e88aa57@iogearbox.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <653fef47-6df5-6100-c65e-52655e88aa57@iogearbox.net>

On Thu, Jul 18, 2024 at 02:50:18PM GMT, Daniel Borkmann wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Unfortunately, I cannot take it as-is because it's only signed by your own
expired key, so the web of trust doesn't work out.

Could you get someone else with a current kernel.org account to sign it as
well?

-K
