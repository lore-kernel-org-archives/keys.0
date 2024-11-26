Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A91512D1F1
	for <keys@linux.kernel.org>; Tue, 26 Nov 2024 22:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732658423; cv=none; b=eZRr68+gHkz37TVFcDqBGdCXW1Tv9JZ+RCDTcqRDa+ofy8wD2BDmj3DphhhVZWC6RPKD4TaYVui+DCuEVWfMkYQjyicZRiKcNfS3KEUtBBHTMTtjXDbfZOjnnNdI54xJ0B2lNkesJ0QrlEXzrvFWKjpBPPvTj00TBi3T2yUREqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732658423; c=relaxed/simple;
	bh=EV7zsKCHuZzZi9+/+N3JS9Qy+BiNlHLFsG2yT15p8s4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZP2c9ZM9FrksTssrEK4lBn8KRU+KovhzOHnbx06baPJ6KxM3Em9cGcr43xRMwZqsVrICwKj0L0fXUqDSlQH3onOr6t6JvRLlYHfVkOwSb9HHMUaFYcirRvh+RLGSz9pAOGRRmEeU/jMzQgnh1u9DoBFWRcqqBsmDXRcExnViXQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=hcey1X/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="hcey1X/g"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADEB7C4CECF;
	Tue, 26 Nov 2024 22:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1732658421;
	bh=EV7zsKCHuZzZi9+/+N3JS9Qy+BiNlHLFsG2yT15p8s4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hcey1X/gEap4mlpmP44AAM2SCUV+jR8LkH7Y3nNzeZ9+sEwDbyUcnbrisgJ22Esz4
	 QDmRa1pvfgqV/QTuEWRnTPJ5IH52FooglRUqefmP8/S6GjyaBBWpQW/E7LCB8Tqb6r
	 ixQcONPELMMpnr/crGBtmmXNWw5CVlInyow8/nX8=
Date: Tue, 26 Nov 2024 17:00:20 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: keys@linux.kernel.org
Subject: Re: palmer@dabbelt.com
Message-ID: <jyf2ewkljmi2iv7vamf55dlpt6vpsncr2o4wna247rkj4o2bdw@fbntqg6anylk>
References: <mhng-650c5616-5a73-462a-a175-45499aa2f24b@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <mhng-650c5616-5a73-462a-a175-45499aa2f24b@palmer-ri-x1c9>

On Tue, Nov 26, 2024 at 07:42:57AM -0800, Palmer Dabbelt wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
