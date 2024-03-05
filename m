Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33830128831
	for <keys@linux.kernel.org>; Tue,  5 Mar 2024 16:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709655729; cv=none; b=LOaGBrqhnC5IhLbnQ3pfj3NVu3Y0C1F1r6qcgKHlNpH6aixhqi6uKENK3+U6/JUwqOntO/XV4YemI0+S/F1bifep5gN+92Wlmu1R7mLhQY4JpnaktGJ0LMsDSk8W/t2qf6OhMGMxfRn9JeDENmoU8wCI/lPA769PxUfr5aZG+AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709655729; c=relaxed/simple;
	bh=qTD9eN6CcJHeerKznUMqnSdoO6QFxSC+OBSARDntWHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rG1Vjcl0i+0fb9Ss8grh3dfYU2rpvqh6sd7BCqKBSoW0YB/krRFl/eu11UTNKWf/Jckz83cuynExrH21UBPm/vIUkqvTAWW3amcb9nZKfBxPHkbdoEtr3JBVQRqvIZ2A3GF6aMOa+mm2ePBDnOlDKUPn4XWX8iNym/gd7K99BdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=aWwwA4ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="aWwwA4ao"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87284C43394;
	Tue,  5 Mar 2024 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1709655728;
	bh=qTD9eN6CcJHeerKznUMqnSdoO6QFxSC+OBSARDntWHo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aWwwA4ao06OCaExE9koRTdAHjwZ2ms1M1NQR/AVs4OvbdYyeZQ6tbGqG/9tExRor4
	 Rjcly0zQ8VKdSSCAN6H3OgfLbMNGa0uY9ubaXv6EHyMiOV9UtldAhS2zomF7tDDqdZ
	 e0ApCUn5vJ8Q4wqqYNnjp0EHUMUnzVF57pFGLsQw=
Date: Tue, 5 Mar 2024 11:22:05 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Quentin Monnet <quentin@isovalent.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Quentin Monnet
Message-ID: <20240305-small-swine-of-acumen-dda4ec@meerkat>
References: <6e999fa6-8bb6-42aa-b2f5-fce1e1c6932a@isovalent.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6e999fa6-8bb6-42aa-b2f5-fce1e1c6932a@isovalent.com>

On Tue, Mar 05, 2024 at 02:05:58PM +0000, Quentin Monnet wrote:
> Hello, I would like to have my key added to the keyring, please.

Added, thanks.

-K
